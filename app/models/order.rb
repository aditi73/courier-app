class Order < ApplicationRecord
  # Associations
  belongs_to :sender, foreign_key: "sender_id", class_name: "UserDetail"
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "UserDetail"
  belongs_to :service
  belongs_to :payment_mode
  belongs_to :status
  
  # Including Helpers
  include OrdersHelper
  
  accepts_nested_attributes_for :receiver, :reject_if => :all_blank

  # Callbacks
  before_save :add_uuid
  after_commit :send_order_email

  # Validations
  validates_presence_of :parcel_weight


  def add_uuid
    # To generate random UUID
    self.order_uuid = self.generate_secure_random_uuid
  end

  def send_order_email
    UserMailer.order_email(self.sender, self.order_uuid).deliver_now
    UserMailer.order_email(self.receiver, self.order_uuid).deliver_now
  end
end
