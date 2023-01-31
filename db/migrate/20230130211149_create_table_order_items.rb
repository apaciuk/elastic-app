class CreateTableOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items, id: :uuid do |t|
      t.references :purchase_order, null: false, foreign_key: true, type: :uuid
      t.string :currency, null: false, default: ""
      t.integer :quantity_ordered, null: false, default: 0
      t.integer :quantity_shipped, null: false, default: 0
      t.float :price, null: false, default: 0.0
      t.float :discount, null: false, default: 0.0
    

      t.timestamps
    end
  end
end
