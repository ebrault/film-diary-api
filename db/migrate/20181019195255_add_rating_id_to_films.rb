class AddRatingIdToFilms < ActiveRecord::Migration[5.2]
  def change
    add_reference :films, :rating, foreign_key: true
  end
end
