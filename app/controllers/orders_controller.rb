class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    order = current_user.user_detail.sent_orders.build(order_params)
    if order.save
      redirect_to '/dashboard', notice: "Order created successfully"
    else
      redirect_to '/dashboard', alert: "Failed to create order"
    end
  end

  def search
    @orders = Order.where(order_uuid: params[:search_term].strip)
  end

  private

  def order_params
    params.require(:order).permit(:status_id, :service_id, :payment_mode_id, :parcel_weight, :order_uuid, :sender_id, receiver_attributes: [:id, :full_name, :pin_code, :address, :phone])
  end
end
