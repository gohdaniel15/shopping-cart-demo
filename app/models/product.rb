class Product < ApplicationRecord

  has_many :orders
  has_many :cart_items

end
