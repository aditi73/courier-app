class AddEmailToUserDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :user_details, :email, :string
  end
end
