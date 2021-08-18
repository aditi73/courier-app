class Status < ApplicationRecord
  # Associations
  has_many :orders

  validates :name, presence: true
end
