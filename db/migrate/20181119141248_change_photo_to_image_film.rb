class ChangePhotoToImageFilm < ActiveRecord::Migration[5.2]
  def change
    rename_column :films, :photo, :image
  end
end
