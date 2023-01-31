class Item < ApplicationRecord 
    attr_accessor :price
    belongs_to :order_item
    belongs_to :purchase_order
end