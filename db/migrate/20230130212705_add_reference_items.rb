class AddReferenceItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :item, null: false, foreign_key: true, type: :uuid
  end
end
