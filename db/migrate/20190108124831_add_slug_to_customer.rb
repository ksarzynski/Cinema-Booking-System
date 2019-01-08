class AddSlugToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :slug, :string
    add_index :customers, :slug, unique: true
  end
end
