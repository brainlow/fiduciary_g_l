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

ActiveRecord::Schema.define(version: 20170601142220) do

  create_table "asset_docs", force: :cascade do |t|
    t.integer  "asset_id"
    t.string   "date"
    t.string   "doc_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "document"
  end

  create_table "assets", force: :cascade do |t|
    t.string   "asset_type"
    t.float    "asset_value"
    t.integer  "matter_id"
    t.float    "total_shares"
    t.string   "description"
    t.string   "asset_account"
    t.float    "market_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "beneficiaries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "beneficiary_type"
    t.float    "residual_amount"
    t.float    "specific_amount"
    t.integer  "matter_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "fiduciaries", force: :cascade do |t|
    t.string   "fiduciary_name"
    t.string   "fiduciary_address"
    t.integer  "matter_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "matter_docs", force: :cascade do |t|
    t.string   "document"
    t.string   "document_type"
    t.integer  "matter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "matters", force: :cascade do |t|
    t.string   "name"
    t.string   "matter_type"
    t.string   "fiduciary_number"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.date     "date"
    t.string   "transaction_type"
    t.float    "amount"
    t.string   "description"
    t.string   "account"
    t.string   "payee"
    t.float    "shares"
    t.integer  "asset_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "matter_name"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
