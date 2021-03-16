class Api::CartedProductsController < ApplicationController
  def create
    if current_user
      @carted_product = CartedProduct.new(
        # name: product.name
        product_id: params[:product_id],
        quantity: params[:quantity],
        user_id: current_user.id,
      )
    end

    if @carted_product.save
      render "show.json.jb"
    else
      render json: { error: "no" }, status: 401
    end
  end

  def index
    @carted_products = CartedProduct.all
    render "index.json.jb"
  end
end
