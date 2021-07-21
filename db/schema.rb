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

ActiveRecord::Schema.define(version: 2021_07_20_080858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.string "house"
    t.string "home"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "contract_id"
    t.index ["contract_id"], name: "index_adresses_on_contract_id", unique: true
  end

  create_table "cashes", force: :cascade do |t|
    t.integer "ammoney"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "contract_id"
    t.index ["contract_id"], name: "index_cashes_on_contract_id", unique: true
  end

  create_table "contracts", force: :cascade do |t|
    t.string "username"
    t.string "face"
    t.string "status"
    t.datetime "startuse"
    t.datetime "enduse"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "usurname"
    t.bigint "tarif_id"
    t.index ["tarif_id"], name: "index_contracts_on_tarif_id"
  end

  create_table "tarifs", force: :cascade do |t|
    t.string "tarifname"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transes", force: :cascade do |t|
    t.integer "money"
    t.datetime "datetrans"
    t.string "nachspis"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "contract_id"
    t.index ["contract_id"], name: "index_transes_on_contract_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
