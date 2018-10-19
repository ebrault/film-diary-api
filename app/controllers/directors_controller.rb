#frozen_string_literal: true

class DirectorsController < ProtectedController
  before_action :set_director, only: %i[show update destroy]

  def index
    @directors = current_user.directors.all
    render json: @directors
  end

  def show
    render json: @director
  end

  def create
    @director = current_user.directors.build(director_params)
    if @director.save
      render json: @director
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
    @director = current_user.directors.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:name)
  end
end
