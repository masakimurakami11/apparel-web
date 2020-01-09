class AddColorIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :size, :integer
    add_column :orders, :color, :integer
  end
end
