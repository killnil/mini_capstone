class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories

  # def products
  #   collection = []
  #   product_categories.each do |product_category|
  #     collection << product_category.product 
  #   end
  #   collection
  # end
end
