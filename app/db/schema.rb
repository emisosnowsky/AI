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

ActiveRecord::Schema.define(version: 20170114144004) do

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_descript"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "lastname"
    t.string   "address"
    t.integer  "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "details", force: :cascade do |t|
    t.integer "order_amount"
    t.integer "order_id"
    t.integer "product_id"
    t.decimal "unit_price"
    t.decimal "total"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.string   "totalprice"
    t.string   "payment_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_code"
    t.string   "product_name"
    t.string   "product_descript"
    t.decimal  "product_price"
    t.string   "product_image"
    t.integer  "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "category_id"
  end

end
