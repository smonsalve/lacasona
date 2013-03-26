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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130326184212) do

  create_table "balance_movements", :force => true do |t|
    t.decimal  "value"
    t.integer  "document_id"
    t.integer  "document_type_id"
    t.date     "movement_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "contracts", :force => true do |t|
    t.integer  "code"
    t.integer  "property_id"
    t.integer  "owner_id"
    t.integer  "lessee_id"
    t.date     "initial_date"
    t.date     "final_date"
    t.integer  "pay_day"
    t.decimal  "rate_commission"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "active"
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "invoice_number"
    t.decimal  "value"
    t.decimal  "interest_value"
    t.integer  "contract_id"
    t.date     "invoice_date"
    t.integer  "month"
    t.integer  "year"
    t.integer  "invoice_status_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "legal_natures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "visible"
  end

  add_index "pages", ["permalink"], :name => "index_pages_on_permalink"

  create_table "payments", :force => true do |t|
    t.integer  "payment_number"
    t.decimal  "value"
    t.date     "paymen_date"
    t.integer  "invoice_id"
    t.integer  "payment_status_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "card_id_number"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "cellphone"
    t.integer  "tax_regime_id"
    t.integer  "legal_nature_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "properties", :force => true do |t|
    t.integer  "code"
    t.integer  "owner_id"
    t.integer  "stratum"
    t.decimal  "market_value"
    t.decimal  "rental_fee"
    t.string   "address"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "phone"
    t.decimal  "appraisal"
    t.integer  "property_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "property_facilities", :force => true do |t|
    t.integer  "property_id"
    t.integer  "facilities_id"
    t.integer  "quantity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "property_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tax_regimes", :force => true do |t|
    t.string   "name"
    t.decimal  "tax_percentage"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
