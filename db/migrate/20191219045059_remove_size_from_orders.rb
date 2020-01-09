class RemoveSizeFromOrders < ActiveRecord::Migration[5.2]
  def up
    remove_column :orders, :size
    remove_column :orders, :color
    remove_column :orders, :size_id_id
  end

  def down
    add_column :orders, :size, :string
    add_column :orders, :color, :string
    add_column :orders, :size_id_id, :reference
  end
end
