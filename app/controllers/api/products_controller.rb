class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  # def all_individual_products
  #   @products = Product.all
  #   individual_products = @products.each do |product|
  #   end
  #   @products = individual_products
  #   render "product.json.jb"
  # end

  def show
    # item = params[:item_select]
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  # def username_password
  #   @products
  # end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @product = Product.find(id)
    (@product.name = params[:name] || @product.name
      @product.price = params[:price] || @product.price
      @product.image_url = params[:image_url] || @product.image_url
      @product.description = params[:description] || @product.description)
    @product.save
  end

  def destroy
    id = params[:id]
    @product = Product.find(id)
    @product.delete
    render json: { message: "product deleted" }
  end
end
