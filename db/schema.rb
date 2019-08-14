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

ActiveRecord::Schema.define(version: 2019_08_14_084626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "girls", force: :cascade do |t|
    t.string "name"
    t.string "cc"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "clientname"
    t.string "waitername"
    t.string "middlemanname"
    t.integer "iva"
    t.integer "service"
    t.integer "subtotal"
    t.integer "total"
    t.date "date"
    t.time "time"
    t.string "waytopay"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.integer "discount"
    t.integer "buyprice"
    t.integer "sellprice"
    t.integer "soldprice"
    t.string "issold"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns", force: :cascade do |t|
    t.datetime "arrivaltime"
    t.datetime "departuretime"
    t.string "isturncompleted"
    t.string "ispaid"
    t.integer "amountpaid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "cc"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
