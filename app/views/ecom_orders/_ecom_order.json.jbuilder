json.extract! ecom_order, :id, :price, :item_sku, :purchase_date, :platform_order_num, :sales_channel, :status, :customer_name, :customer_state, :shipped_at, :num_items_shipped, :payment_method, :created_at, :updated_at
json.url ecom_order_url(ecom_order, format: :json)
