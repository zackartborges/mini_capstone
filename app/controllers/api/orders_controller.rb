class Api::OrdersController < ApplicationController
  def create
    if current_user
    @order = Order.new(
      @order.user_id = params[:user_id],
      @order.product_id = params[:product_id],
      @order.quantity = params[:quantity],
    )
    render "show.json.jb"
  else 
    render #incomplete
  end
end
