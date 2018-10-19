class AddYearIdToFilms < ActiveRecord::Migration[5.2]
  def change
    add_reference :films, :year, foreign_key: true
  end
end
