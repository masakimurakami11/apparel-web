class Product < ApplicationRecord
  has_many :images
  has_many :sizes
  has_many :colors
  has_many :orders
  belongs_to :category
  belongs_to :status
end
