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

ActiveRecord::Schema.define(version: 20180116093250) do

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farm_companies", force: :cascade do |t|
    t.integer "farm_id"
    t.integer "company_id"
    t.datetime "delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_farm_companies_on_company_id"
    t.index ["farm_id"], name: "index_farm_companies_on_farm_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "farm_id"
    t.string "farmer_name"
    t.text "introduction"
    t.string "farmer_photo"
    t.date "farmer_bith"
    t.index ["email"], name: "index_farmers_on_email", unique: true
    t.index ["farm_id"], name: "index_farmers_on_farm_id"
    t.index ["reset_password_token"], name: "index_farmers_on_reset_password_token", unique: true
  end

  create_table "farms", force: :cascade do |t|
    t.integer "place_id"
    t.string "farm_name"
    t.text "introduction"
    t.string "farm_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_farms_on_place_id"
  end

  create_table "fruit_master_farms", force: :cascade do |t|
    t.integer "fruit_master_id"
    t.integer "farm_id"
    t.string "title"
    t.text "detal"
    t.string "fruit_photo"
    t.string "fruit_photo1"
    t.string "fruit_photo2"
    t.string "fruit_photo3"
    t.string "price"
    t.string "sale_off"
    t.date "expiration_date"
    t.boolean "enable_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_fruit_master_farms_on_farm_id"
    t.index ["fruit_master_id"], name: "index_fruit_master_farms_on_fruit_master_id"
  end

  create_table "fruit_masters", force: :cascade do |t|
    t.string "fruit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "fruit_master_id"
    t.integer "user_id"
    t.datetime "delirevy_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fruit_master_id"], name: "index_orders_on_fruit_master_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.date "birthday"
    t.string "address"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
