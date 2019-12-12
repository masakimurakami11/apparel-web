class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :count, null: false
      t.string :size, null: false
      t.string :color, null: false
      t.references  :product,      foreign_key: true
      t.references  :user,      foreign_key: true
      t.timestamps
    end
  end
end
