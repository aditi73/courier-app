class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :service_id
      t.integer :payment_mode_id
      t.integer :status_id
      t.string :order_uuid
      t.decimal :parcel_weight
      t.integer :receiver_id
      t.integer :sender_id
      t.timestamps
    end
  end
end
