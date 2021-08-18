class UserDetail < ApplicationRecord
  # Associations
  belongs_to :user, optional: true
  has_many :sent_orders, foreign_key: "sender_id", class_name: "Order"
  has_many :received_orders, foreign_key: "receiver_id", class_name: "Order"

  # Validations
  validates :full_name, :phone, :pin_code, :address, presence: true
end
