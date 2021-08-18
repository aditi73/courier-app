class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_one :user_detail

  accepts_nested_attributes_for :user_detail, :reject_if => :all_blank

  before_create :add_email_to_user_detail

  protected

  def add_email_to_user_detail
    self.user_detail.email = self.email
  end
end
