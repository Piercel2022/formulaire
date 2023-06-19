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

ActiveRecord::Schema[7.0].define(version: 2023_06_19_082619) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_adultes", force: :cascade do |t|
    t.string "name"
    t.bigint "inscription_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscription_id"], name: "index_club_adultes_on_inscription_id"
  end

  create_table "club_jeune_lecteurs", force: :cascade do |t|
    t.string "name"
    t.bigint "inscription_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscription_id"], name: "index_club_jeune_lecteurs_on_inscription_id"
  end

  create_table "club_teevos", force: :cascade do |t|
    t.string "name"
    t.bigint "inscription_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscription_id"], name: "index_club_teevos_on_inscription_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.bigint "club_adulte_id", null: false
    t.bigint "club_teevo_id", null: false
    t.bigint "club_jeune_lecteur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_adulte_id"], name: "index_clubs_on_club_adulte_id"
    t.index ["club_jeune_lecteur_id"], name: "index_clubs_on_club_jeune_lecteur_id"
    t.index ["club_teevo_id"], name: "index_clubs_on_club_teevo_id"
  end

  create_table "inscriptions", force: :cascade do |t|
    t.string "vorname"
    t.string "name"
    t.string "age"
    t.string "adress"
    t.string "email"
    t.string "phone"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "club_id"
    t.index ["club_id"], name: "index_inscriptions_on_club_id"
  end

  add_foreign_key "club_adultes", "inscriptions"
  add_foreign_key "club_jeune_lecteurs", "inscriptions"
  add_foreign_key "club_teevos", "inscriptions"
  add_foreign_key "clubs", "club_adultes"
  add_foreign_key "clubs", "club_jeune_lecteurs"
  add_foreign_key "clubs", "club_teevos"
  add_foreign_key "inscriptions", "clubs"
end
