class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :categories, through: :category_products

  validates :name, presence: true
  validates :inventory, presence: true
  validates :inventory, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :description, length: { in: 5..200 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def image_urls
  #   image_urls.where(product_id: id)
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.07
  end

  def total
    price + tax
  end
end
