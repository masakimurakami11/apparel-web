class AddSizeIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :size,   foreign_key: true
    add_reference :orders, :color,   foreign_key: true
  end
end
