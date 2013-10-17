# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131017233107) do

  create_table "albums", force: true do |t|
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["product_id"], name: "index_albums_on_product_id"

  create_table "categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.integer  "user_evaluator_id"
    t.integer  "user_evaluated_id"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["user_evaluated_id"], name: "index_evaluations_on_user_evaluated_id"
  add_index "evaluations", ["user_evaluator_id"], name: "index_evaluations_on_user_evaluator_id"

  create_table "interests", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interests", ["category_id"], name: "index_interests_on_category_id"
  add_index "interests", ["user_id"], name: "index_interests_on_user_id"

  create_table "messages", force: true do |t|
    t.integer  "senderUser_id"
    t.integer  "recieverUser_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["recieverUser_id"], name: "index_messages_on_recieverUser_id"
  add_index "messages", ["senderUser_id"], name: "index_messages_on_senderUser_id"

  create_table "product_categories", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_categories", ["category_id"], name: "index_product_categories_on_category_id"
  add_index "product_categories", ["product_id"], name: "index_product_categories_on_product_id"

  create_table "products", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "price"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["album_id"], name: "index_products_on_album_id"

  create_table "sales", force: true do |t|
    t.integer  "seller_user_id"
    t.integer  "buyer_user_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["buyer_user_id"], name: "index_sales_on_buyer_user_id"
  add_index "sales", ["product_id"], name: "index_sales_on_product_id"
  add_index "sales", ["seller_user_id"], name: "index_sales_on_seller_user_id"

  create_table "subcategories", force: true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "subscriptions", force: true do |t|
    t.integer  "user_follower_id"
    t.integer  "user_following_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["user_follower_id"], name: "index_subscriptions_on_user_follower_id"
  add_index "subscriptions", ["user_following_id"], name: "index_subscriptions_on_user_following_id"

  create_table "tags", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "birth_date"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
