class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.integer :release_year

      t.timestamps
    end
  end
end
