ActiveAdmin.register Customer do
  permit_params :firstname, :secondname, :email

  index do
    selectable_column
    id_column
    column :firstname
    column :secondname
    column :email
    actions
  end

  filter :firstname
  filter :secondname
  filter :email

  form do |f|
    f.inputs do
      f.input :firstname
      f.input :secondname
      f.input :email
    end
    f.actions
  end

end
