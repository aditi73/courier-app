class Order < ApplicationRecord
  # Associations
  belongs_to :sender, foreign_key: "sender_id", class_name: "UserDetail"
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "UserDetail"
  belongs_to :service
  belongs_to :payment_mode
  belongs_to :status
  accepts_nested_attributes_for :receiver, :reject_if => :all_blank

  before_save :add_uuid

  def add_uuid
    self.order_uuid = SecureRandom.uuid
  end
end
