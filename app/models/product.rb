class Product < ApplicationRecord
  validates :name, presence: true
  validates :inventory, presence: true
  validates :inventory, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :description, length: { in: 5..200 }

  def supplier
    Product.where(supplier_id: id)
    # return supplier.name
  end

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
