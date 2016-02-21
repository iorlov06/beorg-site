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

ActiveRecord::Schema.define(version: 20160214195053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "endpoints", force: :cascade do |t|
    t.integer  "postal_code"
    t.string   "street_name"
    t.integer  "house_number"
    t.string   "corpus"
    t.string   "flat"
    t.string   "person_name"
    t.string   "person_phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "index_number"
  end

  create_table "localities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "partner_id"
    t.integer  "parcel_id"
    t.text     "note"
    t.string   "email"
    t.time     "capture_time"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.integer  "departure_point_id"
    t.integer  "destination_point_id"
    t.integer  "status"
    t.datetime "delivery_date"
  end

  add_index "orders", ["parcel_id"], name: "index_orders_on_parcel_id", using: :btree
  add_index "orders", ["partner_id"], name: "index_orders_on_partner_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "parcels", force: :cascade do |t|
    t.float    "height"
    t.float    "width"
    t.float    "length"
    t.float    "weight"
    t.float    "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "parcel_type"
    t.integer  "delivery_type"
    t.boolean  "fragile"
    t.integer  "departure_id"
    t.integer  "destination_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "phone_number"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "descripton"
    t.integer  "mark"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "phone"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "partonym"
    t.boolean  "authorized"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "email",                  default: "",         null: false
    t.string   "encrypted_password",     default: "",         null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role",                                        null: false
    t.string   "username",               default: "",         null: false
    t.string   "vat"
    t.string   "form"
    t.string   "account_type",           default: "physical"
    t.string   "legal_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "orders", "parcels"
  add_foreign_key "orders", "partners"
  add_foreign_key "reviews", "users"
end
