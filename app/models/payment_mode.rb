class PaymentMode < ApplicationRecord
  # Associations
  has_many :orders
end
