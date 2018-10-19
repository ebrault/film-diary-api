#frozen_string_literal: true

class DirectorsController < ApplicationController
  before_action :set_director, only: %i[show update destroy]

  def index
    @directors = Director.all
    render json: @directors
  end

  def show
    render json: @director
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      render json: @director, status: :created, location: @director
    else
      render json: @director.errors, status: :unprocessable_entity
    end
  end

  def update
    if @director.update(director_params)
      render json: @director
    else
      render json: @director.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @director.destroy
  end

  private

  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:name)
  end
end
