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

ActiveRecord::Schema.define(version: 20160528191854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_identification", null: false
    t.string   "name",                   null: false
    t.string   "address",                null: false
    t.string   "city",                   null: false
    t.string   "country",                null: false
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "company_versionings", force: :cascade do |t|
    t.string   "company_identification"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "company_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "company_versionings", ["company_id"], name: "index_company_versionings_on_company_id", using: :btree

  create_table "employee_versionings", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.string   "phone_number"
    t.string   "position"
    t.integer  "employee_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "employee_versionings", ["employee_id"], name: "index_employee_versionings_on_employee_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "address",      null: false
    t.string   "city",         null: false
    t.string   "country",      null: false
    t.string   "email"
    t.string   "phone_number"
    t.string   "position",     null: false
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree

end
