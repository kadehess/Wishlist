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

ActiveRecord::Schema.define(version: 2022_12_05_234023) do

  create_table "gift_details", force: :cascade do |t|
    t.string "detail"
    t.integer "gift_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_id"], name: "index_gift_details_on_gift_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "rate"
    t.integer "profile_id"
    t.integer "gift_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_id"], name: "index_rates_on_gift_id"
    t.index ["profile_id"], name: "index_rates_on_profile_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "gift_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_id"], name: "index_wishlists_on_gift_id"
    t.index ["profile_id"], name: "index_wishlists_on_profile_id"
  end

end
