class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products
  

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 254}
  
  validates :price, presence: true
  validates :price, numericality: {less_than: 100_000_000, greater_than: 0}

  validates :description, presence: true


  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end





