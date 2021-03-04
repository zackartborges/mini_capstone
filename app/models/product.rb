class Product < ApplicationRecord
  validates :name, presence: true
  validates :inventory, presence: true, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :description, length: { in: 20..200 }
  validates :description, length: { minimum: 20 }

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
