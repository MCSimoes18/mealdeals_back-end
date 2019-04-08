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

ActiveRecord::Schema.define(version: 2019_04_03_183309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupon_users", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "user_id"
    t.boolean "active"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "offer"
    t.integer "earn_month"
    t.integer "redeem_month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "alias"
    t.string "yelp_id"
    t.string "image_url"
    t.string "url"
    t.string "display_phone"
    t.string "phone"
    t.string "price"
    t.integer "rating"
    t.integer "review_count"
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "city"
    t.string "zip_code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "phone"
    t.float "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
