class Product < ApplicationRecord
  has_many :images
  has_many :order
  belongs_to :category
  belongs_to :status
  belongs_to :color
  belongs_to :size
end
