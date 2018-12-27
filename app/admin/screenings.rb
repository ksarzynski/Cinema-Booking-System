ActiveAdmin.register Screening do
  permit_params :customer_id, :film_id, :screeningdate, :price

  index do
    selectable_column
    id_column
    column :customer_id
    column :film_id
    column :screeningdate
    column :price
    actions
  end

  filter :customer_id
  filter :film_id
  filter :screeningdate
  filter :price

  form do |f|
    f.inputs do
      f.input :customer_id
      f.input :film_id
      f.input :screeningdate
      f.input :price
    end
    f.actions
  end

end
