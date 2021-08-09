ActiveAdmin.register Order do
  permit_params :service_id, :payment_mode_id, :status_id, :order_uuid, :parcel_weight, :receiver_id, :sender_id,
  index do
    selectable_column
    id_column
    column :service
    column :payment_mode
    column :status
    column :order_uuid
    column :parcel_weight
    column :receiver_id
    column :sender_id
    actions
  end

  filter :sender_id
  filter :receiver_id

  form do |f|
    f.inputs do
      f.input :service
      f.input :payment_mode
      f.input :status
      f.input :order_uuid
      f.input :parcel_weight
      f.input :receiver_id
      f.input :sender_id
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :service_id, :payment_mode_id, :status_id, :order_uuid, :parcel_weight, :receiver_id, :sender_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:service_id, :payment_mode_id, :status_id, :order_uuid, :parcel_weight, :receiver_id, :sender_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
