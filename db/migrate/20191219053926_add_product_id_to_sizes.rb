class AddProductIdToSizes < ActiveRecord::Migration[5.2]
  def change
    add_reference :sizes, :product,   foreign_key: true
  end
end
