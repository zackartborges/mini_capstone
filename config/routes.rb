Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/product_all" => "products#all_products"
    # get "/all_individual_products" => "products#all_individual_products"
    # get "product_choose/:id" => "products#item_choice"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
  end
end
