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

ActiveRecord::Schema.define(version: 20161103073129) do

  create_table "contracts", force: :cascade do |t|
    t.string   "title"
    t.string   "ownername"
    t.string   "nameofretail"
    t.string   "addofretail"
    t.integer  "contactno",    limit: 8
    t.string   "emailid"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image"
    t.string   "iproof"
  end

  create_table "dealers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_dealers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dealers_on_reset_password_token", unique: true
  end

  create_table "forwardlogistics", force: :cascade do |t|
    t.string   "oemcode"
    t.string   "factorycode"
    t.string   "batchcode"
    t.bigint   "noofunits"
    t.string   "prodid"
    t.string   "dealerid"
    t.date     "dateofship"
    t.date     "deliverydate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prodid"], name: "index_forwardlogistics_on_prodid", unique: true
  end

  create_table "oems", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "oemcode"
    t.index ["email"], name: "index_oems_on_email", unique: true
    t.index ["reset_password_token"], name: "index_oems_on_reset_password_token", unique: true
  end

  create_table "payrolls", force: :cascade do |t|
    t.string   "custname"
    t.string   "manufacturer"
    t.string   "prodid"
    t.float    "price"
    t.date     "dateofsale"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prodid"], name: "index_payrolls_on_prodid", unique: true
  end

  create_table "productids", force: :cascade do |t|
    t.string   "prodid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
