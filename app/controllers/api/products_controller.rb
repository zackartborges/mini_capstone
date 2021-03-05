class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    # if params[:search]

    # end
    render "product_index.json.jb"
  end

  def show
    # item = params[:item_select]
    @product = Product.find(params[:id])
    render "product_show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      render "product_show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def update
    id = params[:id]
    @product = Product.find(id)

    (@product.name = params[:name] || @product.name
      @product.price = params[:price] || @product.price
      @product.image_url = params[:image_url] || @product.image_url
      @product.description = params[:description] || @product.description
      @product.inventory = params[:inventory] || @product.inventory)
    if @product.save
      render "product_show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def destroy
    id = params[:id]
    @product = Product.find(id)
    @product.delete
    render json: { message: "product deleted" }
  end
end
