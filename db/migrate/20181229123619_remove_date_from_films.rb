class RemoveDateFromFilms < ActiveRecord::Migration[5.2]
  def change
    remove_column :films, :date, :date
  end
end
