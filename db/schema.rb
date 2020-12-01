# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_01_123248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", id: :string, force: :cascade do |t|
    t.bigint "pref_id", null: false
    t.string "name"
    t.datetime "created_at", default: -> { "now()" }
    t.datetime "updated_at", default: -> { "now()" }
    t.index ["pref_id"], name: "index_cities_on_pref_id"
  end

  create_table "prefs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", default: -> { "now()" }
    t.datetime "updated_at", default: -> { "now()" }
  end

  create_table "towns", force: :cascade do |t|
    t.string "city_id", null: false
    t.string "zip_code"
    t.string "area_name"
    t.string "street_name"
    t.datetime "created_at", default: -> { "now()" }
    t.datetime "updated_at", default: -> { "now()" }
    t.index ["city_id"], name: "index_towns_on_city_id"
  end

  add_foreign_key "cities", "prefs"
  add_foreign_key "towns", "cities"
end
