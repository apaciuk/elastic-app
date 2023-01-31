class PurchaseOrder < ApplicationRecord
    attr_accessor :price
    has_and_belongs_to_many :order_items
    has_and_belongs_to_many :items
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end
