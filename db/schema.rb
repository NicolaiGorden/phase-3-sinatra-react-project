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

ActiveRecord::Schema.define(version: 2023_03_04_093316) do

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "gym1_id"
    t.integer "gym2_id"
    t.integer "gym3_id"
    t.integer "gym4_id"
    t.integer "gym5_id"
    t.integer "gym6_id"
    t.integer "gym7_id"
    t.integer "gym8_id"
    t.integer "e41_id"
    t.integer "e42_id"
    t.integer "e43_id"
    t.integer "e44_id"
    t.integer "champion_id"
  end

  create_table "mons", force: :cascade do |t|
    t.string "nickname"
    t.string "species"
    t.string "ability"
    t.string "move1"
    t.string "move2"
    t.string "move3"
    t.string "move4"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "occupation"
    t.integer "mon1_id"
    t.integer "mon2_id"
    t.integer "mon3_id"
    t.integer "mon4_id"
    t.integer "mon5_id"
    t.integer "mon6_id"
    t.integer "league_id"
  end

end
