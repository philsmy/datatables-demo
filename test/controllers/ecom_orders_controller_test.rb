require 'test_helper'

class EcomOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecom_order = ecom_orders(:one)
  end

  test "should get index" do
    get ecom_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_ecom_order_url
    assert_response :success
  end

  test "should create ecom_order" do
    assert_difference('EcomOrder.count') do
      post ecom_orders_url, params: { ecom_order: { customer_name: @ecom_order.customer_name, customer_state: @ecom_order.customer_state, item_sku: @ecom_order.item_sku, num_items_shipped: @ecom_order.num_items_shipped, payment_method: @ecom_order.payment_method, platform_order_num: @ecom_order.platform_order_num, price: @ecom_order.price, purchase_date: @ecom_order.purchase_date, sales_channel: @ecom_order.sales_channel, shipped_at: @ecom_order.shipped_at, status: @ecom_order.status } }
    end

    assert_redirected_to ecom_order_url(EcomOrder.last)
  end

  test "should show ecom_order" do
    get ecom_order_url(@ecom_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecom_order_url(@ecom_order)
    assert_response :success
  end

  test "should update ecom_order" do
    patch ecom_order_url(@ecom_order), params: { ecom_order: { customer_name: @ecom_order.customer_name, customer_state: @ecom_order.customer_state, item_sku: @ecom_order.item_sku, num_items_shipped: @ecom_order.num_items_shipped, payment_method: @ecom_order.payment_method, platform_order_num: @ecom_order.platform_order_num, price: @ecom_order.price, purchase_date: @ecom_order.purchase_date, sales_channel: @ecom_order.sales_channel, shipped_at: @ecom_order.shipped_at, status: @ecom_order.status } }
    assert_redirected_to ecom_order_url(@ecom_order)
  end

  test "should destroy ecom_order" do
    assert_difference('EcomOrder.count', -1) do
      delete ecom_order_url(@ecom_order)
    end

    assert_redirected_to ecom_orders_url
  end
end
