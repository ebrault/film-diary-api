class AddWatchedToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :watched, :datetime
  end
end
