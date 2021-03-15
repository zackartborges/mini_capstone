# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Product.create(name: "Poker Chips set", price: 20.00, image_url: "hd836", description: "Great poker chips!")

# Product.create(name: "Scorpion King in blu ray", price: 350.00, image_url: "sjwuahe", description: "Best movie ever!")
# Supplier.create(name: "Big City Classic Time Items!", email: "wowwowitems@example.com", phone_number: 39200139)
# CategoryProduct.create(product_id: 9, category_id: 3)
# CategoryProduct.create(product_id: 1, category_id: 5)
# CategoryProduct.create(product_id: 2, category_id: 3)
# CategoryProduct.create(product_id: 2, category_id: 5)
# CategoryProduct.create(product_id: 16, category_id: 4)
# CategoryProduct.create(product_id: 16, category_id: 5)

=begin
  set up a carted products model:
  user_id, product_id, quantity, status, order_id
  change order model => remove product Id and quantity
  make carted
  add associations to CartedProducts : 
  has_many :users, products, orders
  users: 
  has_many :carted_products
  has_many : products, through carted_products
  has_many :orders


end
