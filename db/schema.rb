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

ActiveRecord::Schema[7.0].define(version: 2023_10_11_171210) do
  create_table "card_subtypes", force: :cascade do |t|
    t.integer "card_id", null: false
    t.integer "subtype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_subtypes_on_card_id"
    t.index ["subtype_id"], name: "index_card_subtypes_on_subtype_id"
  end

  create_table "card_types", force: :cascade do |t|
    t.integer "card_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_types_on_card_id"
    t.index ["type_id"], name: "index_card_types_on_type_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.string "artist"
    t.text "text"
    t.string "imageurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "supertype_id"
    t.integer "cardset_id"
    t.index ["cardset_id"], name: "index_cards_on_cardset_id"
    t.index ["supertype_id"], name: "index_cards_on_supertype_id"
  end

  create_table "cardsets", force: :cascade do |t|
    t.string "name"
    t.string "series"
    t.date "releasedate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.integer "cardset_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cardset_id"], name: "index_locations_on_cardset_id"
  end

  create_table "subtypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supertypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "card_subtypes", "cards"
  add_foreign_key "card_subtypes", "subtypes"
  add_foreign_key "card_types", "cards"
  add_foreign_key "card_types", "types"
  add_foreign_key "cards", "cardsets"
  add_foreign_key "cards", "supertypes"
  add_foreign_key "locations", "cardsets"
end
