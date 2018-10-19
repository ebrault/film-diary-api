class AddYearToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :year, :integer
  end
end
