class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render "index.json.jb"
    else
      render json: { error: "Login required." }
    end
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal

    if current_user
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,

      )
      @order.save
      render "show.json.jb"
    else
      render json: { message: "unauthorized" }, status: 401
    end
  end

  def show
    order_id = params[:id]
    @order = current_user.orders.find(order_id)
    render "show.json.jb"
  end
end
