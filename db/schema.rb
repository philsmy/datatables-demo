# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_11_013944) do

  create_table "ecom_orders", force: :cascade do |t|
    t.float "price"
    t.string "item_sku"
    t.datetime "purchase_date"
    t.string "platform_order_num"
    t.string "sales_channel"
    t.string "status"
    t.string "customer_name"
    t.string "customer_state"
    t.datetime "shipped_at"
    t.integer "num_items_shipped"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
