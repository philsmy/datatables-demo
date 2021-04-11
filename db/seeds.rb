# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  order_type = %w[confirmed shipped delivered].sample
  purchase_date = Faker::Time.backward(days: 30)
  shipped_at = %w[shipped delivered].include?(order_type) ? purchase_date + 3.days : nil

  EcomOrder.create    platform_order_num: "#{Faker::Number.number(digits: 3)}-#{Faker::Number.number(digits: 8)}-#{Faker::Number.number(digits: 8)}",
                      price: Faker::Commerce.price(range: 10..20.99),
                      item_sku: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3),
                      purchase_date: purchase_date,
                      sales_channel: ['amazon.com', 'ebay.com', 'walmart.com'].sample,
                      status: order_type,
                      customer_name: Faker::Name.name,
                      customer_state: Faker::Address.state,
                      shipped_at: shipped_at,
                      num_items_shipped: [1, 2].sample,
                      payment_method: ['MC', 'V'].sample
end
