class AddRatingToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :rating, :string
  end
end
