class RemoveYearFromFilms < ActiveRecord::Migration[5.2]
  def change
    remove_column :films, :year, :integer
  end
end
