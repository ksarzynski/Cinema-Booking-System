class AddPhotoToFilm < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :photo, :string
  end
end
