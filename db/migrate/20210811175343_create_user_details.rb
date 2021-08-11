class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.string :full_name
      t.string :phone
      t.integer :pin_code
      t.string :address
      t.integer :user_id
      t.timestamps
    end
  end
end
