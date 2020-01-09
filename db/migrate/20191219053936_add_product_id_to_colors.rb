class AddProductIdToColors < ActiveRecord::Migration[5.2]
  def change
    add_reference :colors, :product,   foreign_key: true
  end
end
