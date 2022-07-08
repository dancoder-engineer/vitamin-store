# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_28_183113) do
  create_table "addresses", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "town"
    t.string "state"
    t.string "zipcode"
    t.integer "order_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartitems", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "items"
    t.integer "amounts"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creditcards", force: :cascade do |t|
    t.string "nameoncard"
    t.string "number"
    t.string "expiration"
    t.string "cvc"
    t.integer "user_id"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "dose"
    t.integer "pillamount"
    t.float "price"
    t.string "pilltype"
    t.text "blurb"
    t.string "picurl"
    t.boolean "featured"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itemvitamins", force: :cascade do |t|
    t.integer "item_id"
    t.integer "vitamin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderitems", force: :cascade do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "items"
    t.integer "amounts"
    t.string "fulfilled"
    t.string "fulfilled_by"
    t.integer "user_id"
    t.integer "address_id"
    t.integer "creditcard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "username"
    t.text "title"
    t.text "reviewtext"
    t.integer "stars"
    t.integer "item_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "password_digest"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitamins", force: :cascade do |t|
    t.string "name"
    t.text "whatsitdo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
