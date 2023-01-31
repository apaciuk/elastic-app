class CreatePurchaseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_orders, id: :uuid do |t|
      t.string :order_num, null: false, index: true, unique: true, limit: 20, default: ""
      t.date :purchase_date, null: true, index: true
      t.string :status, null: false, index: true, default: ""
      t.string :sales_channel, null: false, index: true, default: ""
      t.float :order_total, null: false, default: 0.0
      t.integer :num_items_shipped, null: false, default: 0
      t.integer :num_items_unshipped, null: false, default: 0
      t.string :payment_method, null: false, default: ""
      t.date :shipped_at, null: true, index: true
      t.float :shipping_price, null: false, default: 0.0
      t.float :shipping_tax, null: false, default: 0.0
      t.string :carrier, null: false, default: ""
      t.string :tracking_number, null: false, default: ""
      t.date :est_arrival_date, null: true, index: true
      t.string :fulfillment_center, null: false, default: ""
      t.date :confirmed_at, null: true, index: true
      t.date :returned_date, null: true, index: true
      t.string :return_reason, null: false, default: ""
      t.text :notes, null: false, default: ""
      t.date :refunded_at, null: true, index: true
      t.string :ship_to_name, null: false, default: ""
      t.string :ship_to_address, null: false, default: ""

      t.timestamps
    end
  end
end
