class CreateOrderStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :order_statuses do |t|
      t.string :order_status, null: false
      t.timestamps
    end
  end
end