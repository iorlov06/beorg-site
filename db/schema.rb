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

ActiveRecord::Schema.define(version: 20151124091315) do

  create_table "endpoints", force: :cascade do |t|
    t.integer  "postal_code",  limit: 4
    t.string   "street_name",  limit: 255
    t.integer  "house_number", limit: 4
    t.string   "corpus",       limit: 255
    t.string   "flat",         limit: 255
    t.string   "person_name",  limit: 255
    t.string   "person_phone", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "partner_id",           limit: 4
    t.integer  "parcel_id",            limit: 4
    t.integer  "departure_point_id",   limit: 4
    t.integer  "destination_point_id", limit: 4
    t.text     "note",                 limit: 65535
    t.string   "email",                limit: 255
    t.time     "capture_time"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id",              limit: 4
  end

  add_index "orders", ["departure_point_id"], name: "index_orders_on_departure_point_id", using: :btree
  add_index "orders", ["destination_point_id"], name: "index_orders_on_destination_point_id", using: :btree
  add_index "orders", ["parcel_id"], name: "index_orders_on_parcel_id", using: :btree
  add_index "orders", ["partner_id"], name: "index_orders_on_partner_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "parcels", force: :cascade do |t|
    t.integer  "departure_id",   limit: 4
    t.integer  "destination_id", limit: 4
    t.float    "height",         limit: 24
    t.float    "width",          limit: 24
    t.float    "length",         limit: 24
    t.float    "weight",         limit: 24
    t.float    "price",          limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "parcels", ["departure_id"], name: "index_parcels_on_departure_id", using: :btree
  add_index "parcels", ["destination_id"], name: "index_parcels_on_destination_id", using: :btree

  create_table "partners", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "logo_url",     limit: 255
    t.string   "phone_number", limit: 255
    t.string   "link",         limit: 255
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "phone",                  limit: 255
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.string   "partonym",               limit: 255
    t.boolean  "authorized"
    t.boolean  "admin"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
