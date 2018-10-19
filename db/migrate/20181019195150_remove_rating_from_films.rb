class RemoveRatingFromFilms < ActiveRecord::Migration[5.2]
  def change
    remove_column :films, :rating, :string
  end
end
