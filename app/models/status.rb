class Status < ApplicationRecord
  # Associations
  has_many :orders
end
