class CreateTableItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :sku, null: false, default: ""
      t.string :title, null: false, default: ""
      t.string :nickname, null: false, default: ""
      t.float :price, null: false, default: 0.0
      t.integer :inventory, null: false, default: 0
      t.float :fulfillment_fee, null: false, default: 0.0
      t.float :unit_cost, null: false, default: 0.0
      t.timestamps
    end
  end
end
