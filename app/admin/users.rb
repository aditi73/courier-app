ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :full_name, :address, :pin_code, :phone

  index do
    selectable_column
    id_column
    column :email
    column :full_name
    column :phone
    column :address
    column :pin_code
    actions
  end

  filter :email
  filter :full_name

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :full_name
      f.input :phone
      f.input :address
      f.input :pin_code
    end
    f.actions
  end
end
