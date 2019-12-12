class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category,   foreign_key: true
    add_reference :products, :status,   foreign_key: true
    add_reference :products, :color,   foreign_key: true
  end
end
