class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "product_1.json.jb"
  end

  def all_individual_products
    @products = Product.all
    individual_products = @products.each do |product|
    end
    @products = individual_products
    render "product.json.jb"
  end

  def item_choice
    # item = params[:item_select]
    @products = Product.find(params[:id])
    render "product_1.json.jb"
  end

  def username_password
    @products
  end
end
