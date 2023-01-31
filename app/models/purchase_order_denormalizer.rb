class PurchaseOrderDenormalizer 
    attr_reader :purchase_order

    def initialize(purchase_order)
        @purchase_order = purchase_order
    end

    def to_hash
        %w[id order_items].each_with_object({}) do |field, hash|
            hash[field] = send(field)
        end
    end 

    def id
        purchase_order.id
    end

    def order_items
        purchase_order.order_items.map do |order_item|
            {
                item_id: order_item.item_id,
                quantity: order_item.quantity,
                price: order_item.price,
                skus: order_item.skus,
                item_ids: order_item.item_ids,
                platform_fee: order_item.platform_fee
            }
        end
    end

    def items
        purchase_order.items.map do |item|
            {
                id: item.id,
                name: item.name,
                sku: item.sku,
                price: item.price,
                platform_fee: item.platform_fee
            }
        end
    end

    def as_indexed_json(options={})
        to_hash
    end 

    def self.denormalize(purchase_order)
        PurchaseOrderDenormalizer.new(purchase_order).to_hash
    end
end

