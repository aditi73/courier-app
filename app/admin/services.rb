ActiveAdmin.register Service do
  permit_params :name, :cost_per_kg

  index do
    selectable_column
    id_column
    column :name
    column :cost_per_kg
    column :created_at
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :cost_per_kg
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :cost_per_kg
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :cost_per_kg]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
