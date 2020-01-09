class Address < ApplicationRecord
  VALID_POSTAL_CODE = /\A\d{3}-?\d{4}\z/

  validates :zip, presence: true, length: { maximum: 8 }, format: { with: VALID_POSTAL_CODE, message: 'は有効でありません。' }
  validates :prefecture, presence: true
  validates :city_name, presence: true, length: { maximum: 50 }
  validates :block_name, presence: true, length: { maximum: 100 }
  validates :bill_name, length: { maximum: 100 }
end
