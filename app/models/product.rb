class Product < ApplicationRecord
  has_many :images
  belongs_to :category
  belongs_to :status
  belongs_to :color
  belongs_to :size
end
