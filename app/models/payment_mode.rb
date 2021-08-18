class PaymentMode < ApplicationRecord
  # Associations
  has_many :orders

  # Validations
  validates :name, presence: true
end
