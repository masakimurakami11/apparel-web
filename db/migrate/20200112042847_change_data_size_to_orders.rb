class ChangeDataSizeToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :size, :integer
    change_column :orders, :color, :integer
  end
end
