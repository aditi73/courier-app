class HomeController < ApplicationController
  def index
  end

  def dashboard
    @orders = current_user.user_detail.sent_orders
  end
end
