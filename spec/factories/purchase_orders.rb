FactoryBot.define do
  factory :purchase_order do
    order_num { "MyString" }
    purchase_date { "2023-01-30" }
    status { "MyString" }
    sales_channel { "MyString" }
    order_total { 1.5 }
    num_items_shipped { 1 }
    num_items_unshipped { 1 }
    payment_method { "MyString" }
    shipped_at { "2023-01-30" }
    shipping_price { 1.5 }
    shipping_tax { 1.5 }
    carrier { "MyString" }
    tracking_number { "MyString" }
    est_arrival_date { "2023-01-30" }
    fulfillment_center { "MyString" }
    confirnmed_at { "2023-01-30" }
    returned_date { "2023-01-30" }
    return_reason { "MyString" }
    notes { "MyText" }
    refunded_at { "2023-01-30" }
    ship_to_name { "MyString" }
    ship_to_address { "MyString" }
  end
end
