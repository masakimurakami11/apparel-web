class RemoveSizeIdFromOrders < ActiveRecord::Migration[5.2]
  def up
    remove_column :orders, :size_id
    remove_column :orders, :color_id
  end

  def down
    add_column :orders, :size_id, :reference
    add_column :orders, :color_id, :reference
  end
end
