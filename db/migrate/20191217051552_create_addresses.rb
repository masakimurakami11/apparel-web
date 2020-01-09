class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :zip,                null: false
      t.string :prefecture,         null: false
      t.string :city_name,          null: false
      t.string :block_name,         null: false
      t.string :bill_name
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
