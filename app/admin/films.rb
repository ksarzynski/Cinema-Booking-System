ActiveAdmin.register Film do
  permit_params :title, :director, :release_year

  index do
    selectable_column
    id_column
    column :title
    column :director
    column :release_year
    actions
  end

  filter :title
  filter :director
  filter :release_year

  form do |f|
    f.inputs do
      f.input :title
      f.input :director
      f.input :release_year
    end
    f.actions
  end

end
