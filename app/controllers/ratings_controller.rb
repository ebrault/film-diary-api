class RatingsController < ProtectedController
  before_action :set_rating, only: %i[show update destroy]

  def index
    @ratings = current_user.ratings.all
    render json: @ratings
  end

  def show
    render json: @rating
  end

  def create
    @rating = current_user.ratings.build(rating_params)
    if @rating.save
      render json: @rating, status: :created
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rating.destroy
  end

  private

  def set_rating
    @rating = current_user.ratings.find(params[:id])
  end

  def rating_params
    params.require(:rating).permit(:rating)
  end
end
