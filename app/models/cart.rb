class Cart < ApplicationRecord
  # belongs_to :user
  has_many :joinTableCartItem
  has_many :items, through: :joinTableCartItem
end
