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

ActiveRecord::Schema.define(version: 20151126180317) do

  create_table "clients", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

  add_index "clients", ["email"], name: "index_clients_on_email"
  add_index "clients", ["profile_id"], name: "index_clients_on_profile_id"
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  add_index "clients", ["uid", "provider"], name: "index_clients_on_uid_and_provider", unique: true

  create_table "events", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "client_id"
    t.string   "name"
    t.string   "client"
    t.string   "invite"
    t.datetime "start"
    t.time     "estimated_time"
    t.boolean  "confirmed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "events", ["client_id"], name: "index_events_on_client_id"
  add_index "events", ["owner_id"], name: "index_events_on_owner_id"

  create_table "owners", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
    t.boolean  "mon",                    default: false
    t.boolean  "tue",                    default: false
    t.boolean  "wed",                    default: false
    t.boolean  "thu",                    default: false
    t.boolean  "fri",                    default: false
    t.boolean  "sat",                    default: false
    t.boolean  "sun",                    default: false
    t.time     "start"
    t.time     "end"
    t.time     "time_per_client"
  end

  add_index "owners", ["email"], name: "index_owners_on_email"
  add_index "owners", ["profile_id"], name: "index_owners_on_profile_id"
  add_index "owners", ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  add_index "owners", ["uid", "provider"], name: "index_owners_on_uid_and_provider", unique: true

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "cpf"
    t.string   "mobile"
    t.string   "zipcode"
    t.string   "address"
    t.string   "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
