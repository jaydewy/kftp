# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_12_044425) do
  create_table "campers", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "last_name", limit: 32, default: "", null: false
    t.string "first_name", limit: 32, default: "", null: false
    t.string "address", limit: 32, default: "", null: false
    t.string "city", limit: 32, default: "", null: false
    t.string "province", limit: 16, default: "", null: false
    t.string "postal_code", limit: 12, default: "", null: false
    t.integer "lock_version", default: 0
    t.string "phone", limit: 18
    t.string "email", limit: 128
    t.string "phone_2", limit: 18
    t.string "email_2", limit: 128
    t.text "notes"
    t.text "addl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charges", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "fee_id", null: false
    t.bigint "reservation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fee_id"], name: "index_charges_on_fee_id"
    t.index ["reservation_id"], name: "index_charges_on_reservation_id"
  end

  create_table "discounts", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.decimal "amount", precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_percent", default: true, null: false
    t.boolean "lot_fee_only", default: false, null: false
  end

  create_table "events", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 30
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false, null: false
  end

  create_table "extra_charges", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "extra_id"
    t.bigint "reservation_id"
    t.integer "number", default: 0
    t.decimal "charge", precision: 6, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["extra_id"], name: "index_extra_charges_on_extra_id"
    t.index ["reservation_id"], name: "index_extra_charges_on_reservation_id"
  end

  create_table "extras", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.decimal "charge", precision: 6, scale: 2, default: "0.0"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.index ["event_id"], name: "index_extras_on_event_id"
  end

  create_table "fees", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.decimal "amount", precision: 10, scale: 2
    t.bigint "event_id", null: false
    t.bigint "site_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_fees_on_event_id"
    t.index ["site_type_id"], name: "index_fees_on_site_type_id"
  end

  create_table "groups", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.integer "expected_number", default: 0, null: false
    t.bigint "camper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camper_id"], name: "index_groups_on_camper_id"
  end

  create_table "invoice_line_items", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "item_name"
    t.integer "item_quantity", null: false
    t.decimal "item_unit_price", precision: 5, scale: 2
    t.bigint "invoice_id", null: false
    t.bigint "discount_id"
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_invoice_line_items_on_discount_id"
    t.index ["invoice_id"], name: "index_invoice_line_items_on_invoice_id"
    t.index ["item_type", "item_id"], name: "index_invoice_line_items_on_item"
  end

  create_table "invoices", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "recipient"
    t.bigint "reservation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invoice_number"
    t.string "recipient_name"
    t.integer "status", default: 0
    t.string "lot_name"
    t.date "paid_date"
    t.index ["reservation_id"], name: "index_invoices_on_reservation_id"
  end

  create_table "invoices_reservations", id: false, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "reservation_id", null: false
  end

  create_table "lots", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.integer "length", limit: 3, default: 0, null: false
    t.integer "width", limit: 3, default: 102
    t.string "special_condition"
    t.boolean "unavailable", default: false
    t.bigint "site_type_id"
    t.bigint "rate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rate_id"], name: "index_lots_on_rate_id"
    t.index ["site_type_id"], name: "index_lots_on_site_type_id"
  end

  create_table "payment_methods", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.decimal "amount", precision: 11, scale: 5, default: "0.0"
    t.string "memo"
    t.boolean "refundable", default: false
    t.bigint "payment_method_id"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "invoice_id"
    t.string "reference_number"
    t.integer "status", default: 0
    t.decimal "change_back", precision: 5, scale: 2
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
    t.index ["reservation_id"], name: "index_payments_on_reservation_id"
  end

  create_table "rates", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.decimal "rate", precision: 10, scale: 5, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservation_statuses", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.date "fair_year"
    t.decimal "deposit", precision: 8, scale: 2, default: "0.0"
    t.decimal "override_total", precision: 8, scale: 2, default: "0.0"
    t.text "special_request"
    t.integer "slides", limit: 1, default: 0
    t.integer "length", limit: 3, default: 0
    t.string "vehicle_license", limit: 20
    t.string "vehicle_province", limit: 16
    t.boolean "checked_in", default: false
    t.integer "adults", limit: 2, default: 2
    t.integer "pets", limit: 2, default: 0
    t.integer "kids", limit: 2, default: 0
    t.integer "lock_version", default: 0
    t.decimal "total", precision: 8, scale: 2, default: "0.0"
    t.boolean "confirmed", default: false
    t.decimal "ext_charges", precision: 6, scale: 2, default: "0.0"
    t.text "tax_str"
    t.decimal "tax_amount", precision: 6, scale: 2, default: "0.0"
    t.text "log"
    t.string "vehicle_license_2", limit: 20
    t.string "vehicle_province_2", limit: 16
    t.decimal "onetime_discount", precision: 8, scale: 2, default: "0.0"
    t.boolean "archived", default: false
    t.integer "next"
    t.integer "prev"
    t.boolean "cancelled", default: false
    t.datetime "checked_in_time"
    t.bigint "lot_id"
    t.bigint "discount_id"
    t.bigint "group_id"
    t.bigint "camper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "non_renewable", default: false
    t.bigint "event_id"
    t.integer "status", default: 0
    t.index ["camper_id"], name: "index_reservations_on_camper_id"
    t.index ["discount_id"], name: "index_reservations_on_discount_id"
    t.index ["event_id"], name: "index_reservations_on_event_id"
    t.index ["group_id"], name: "index_reservations_on_group_id"
    t.index ["lot_id"], name: "index_reservations_on_lot_id"
  end

  create_table "site_types", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "charges", "fees"
  add_foreign_key "charges", "reservations"
  add_foreign_key "extra_charges", "extras"
  add_foreign_key "extra_charges", "reservations"
  add_foreign_key "groups", "campers"
  add_foreign_key "invoice_line_items", "discounts"
  add_foreign_key "invoice_line_items", "invoices"
  add_foreign_key "invoices", "reservations"
  add_foreign_key "lots", "rates"
  add_foreign_key "lots", "site_types"
  add_foreign_key "payments", "payment_methods"
  add_foreign_key "payments", "reservations"
  add_foreign_key "reservations", "campers"
  add_foreign_key "reservations", "discounts"
  add_foreign_key "reservations", "groups"
  add_foreign_key "reservations", "lots"
end
