ActiveAdmin.register Customer do
  permit_params :firstname, :secondname, :email
end
