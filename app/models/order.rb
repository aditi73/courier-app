class Order < ApplicationRecord
  # Associations
  belongs_to :sender, foreign_key: "sender_id", class_name: "UserDetail"
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "UserDetail"
  belongs_to :service
  belongs_to :payment_mode
  belongs_to :status
end
