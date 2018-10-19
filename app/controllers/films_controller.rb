# frozen_string_literal: true

class FilmsController < ApplicationController
  before_action :set_film, only: %i[update show destroy]
  def index
    @films = Film.all
    render json: @films
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      render json: @film
    else
      render json: films.errors, status: :unprocessable_entity
    end
  end

  def update
    if @film.update(film_params)
    else
      render json: films.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @film
  end

  def destroy
    @film.destroy
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :director, :year, :rating, :id)
  end
end
