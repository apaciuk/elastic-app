require 'rails_helper'

RSpec.describe "purchase_orders/index", type: :view do
  before(:each) do
    assign(:purchase_orders, [
      PurchaseOrder.create!(
        order_num: "Order Num",
        status: "Status",
        sales_channel: "Sales Channel",
        order_total: 2.5,
        num_items_shipped: 3,
        num_items_unshipped: 4,
        payment_method: "Payment Method",
        shipping_price: 5.5,
        shipping_tax: 6.5,
        carrier: "Carrier",
        tracking_number: "Tracking Number",
        fulfillment_center: "Fulfillment Center",
        return_reason: "Return Reason",
        notes: "MyText",
        ship_to_name: "Ship To Name",
        ship_to_address: "Ship To Address"
      ),
      PurchaseOrder.create!(
        order_num: "Order Num",
        status: "Status",
        sales_channel: "Sales Channel",
        order_total: 2.5,
        num_items_shipped: 3,
        num_items_unshipped: 4,
        payment_method: "Payment Method",
        shipping_price: 5.5,
        shipping_tax: 6.5,
        carrier: "Carrier",
        tracking_number: "Tracking Number",
        fulfillment_center: "Fulfillment Center",
        return_reason: "Return Reason",
        notes: "MyText",
        ship_to_name: "Ship To Name",
        ship_to_address: "Ship To Address"
      )
    ])
  end

  it "renders a list of purchase_orders" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Order Num".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Sales Channel".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Payment Method".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Carrier".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Tracking Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Fulfillment Center".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Return Reason".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ship To Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ship To Address".to_s), count: 2
  end
end
