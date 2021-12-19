class Item < ApplicationRecord
  has_many :joinTableCartItems
  has_many :carts, through: :joinTableCartItem
  # has_many :users, through: :joinTableCartItem


  


  
  
end
