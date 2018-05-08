class CreateScreenings < ActiveRecord::Migration[5.2]
  def change
    create_table :screenings do |t|
      t.integer :customer_id
      t.integer :film_id
      t.datetime :screeningdate
      t.decimal :price

      t.timestamps
    end
  end
end
