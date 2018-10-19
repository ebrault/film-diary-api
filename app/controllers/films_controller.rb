# frozen_string_literal: true

class FilmsController < ProtectedController
  before_action :set_film, only: %i[update show destroy]
  def index
    @films = current_user.films.all
    render json: @films
  end

  def create
    @film = current_user.films.build(film_params)
    if @film.save
      render json: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  def update
    if @film.update(film_params)
      render json: @film
    else
      render json: @film.errors, status: :unprocessable_entity
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
    @film = current_user.films.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :director, :id)
  end
end
