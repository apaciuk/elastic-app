class OrderItem < ApplicationRecord 
    has_and_belongs_to_many :purchase_orders
    has_and_belongs_to_many :items
end