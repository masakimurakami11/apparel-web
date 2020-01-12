class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :order_statuses

  validates :count, presence: true
  validates :size, presence: true
  validates :color, presence: true


  enum size:{
    '--':      0, #--
    S:         1, #S
    M:         2, #M
    L:         3, #L
    LL:        4, #LL
  },_prefix: true

  enum color:{
    '--':           0, #--
    white:          1, #white
    black:          2, #black
    orange:         3, #orange
  },_prefix: true
end
