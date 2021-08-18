class UserMailer < ApplicationMailer
  
  def order_email user, order_id
    @user = user
    @order_id = order_id
    mail(to: user.email, subject: 'Hey! Your courier hash been initiated!')
  end
end
