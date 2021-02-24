class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "product_1.json.jb"
  end

  def all_individual_products
    render "all_products.json.jb"
  end
end
