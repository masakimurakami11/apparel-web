class RemoveSizeIdFromProducts < ActiveRecord::Migration[5.2]
  def up
    remove_column :products, :size_id
    remove_column :products, :color_id
  end

  def down
    add_column :products, :size_id, :reference
    add_column :products, :color_id, :reference
  end
end
