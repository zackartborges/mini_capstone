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
    patch "products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
    post "/suppliers" => "suppliers#create"
    patch "suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"

    post "/carted_products" => "carted_products#create"
    index "/carted_products" => "carted_products#index"
  end
end
