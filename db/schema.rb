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

ActiveRecord::Schema.define(version: 20140703162043) do

  create_table "locations", force: true do |t|
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "tenant_firstname"
    t.string   "tenant_lastname"
    t.date     "tenant_since"
    t.integer  "user_id"
    t.string   "tenant_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["user_id"], name: "index_locations_on_user_id"

  create_table "quittances", force: true do |t|
    t.integer  "location_id"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "amount"
    t.float    "common_amount"
    t.date     "sent_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quittances", ["location_id"], name: "index_quittances_on_location_id"

  create_table "user_informations", force: true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "zip"
    t.string   "city"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_informations", ["user_id"], name: "index_user_informations_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
