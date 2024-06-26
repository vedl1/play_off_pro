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

ActiveRecord::Schema[7.1].define(version: 2024_05_15_144626) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "completed"
    t.bigint "game_id", null: false
    t.bigint "opp_id"
    t.boolean "accepted", default: false
    t.float "wager"
    t.string "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_competitions_on_game_id"
    t.index ["opp_id"], name: "index_competitions_on_opp_id"
    t.index ["user_id"], name: "index_competitions_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "platform"
    t.string "title"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.bigint "competition_id", null: false
    t.float "token"
    t.boolean "win"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_results_on_competition_id"
    t.index ["user_id"], name: "index_results_on_user_id"
  end

  create_table "stats", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "competition_id", null: false
    t.string "name"
    t.integer "amount"
    t.integer "kills"
    t.float "kd_ratio"
    t.integer "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_stats_on_competition_id"
    t.index ["user_id"], name: "index_stats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.string "gamer_tag"
    t.integer "win"
    t.integer "loss"
    t.float "tokens", default: 100.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "competitions", "games"
  add_foreign_key "competitions", "users"
  add_foreign_key "competitions", "users", column: "opp_id"
  add_foreign_key "results", "competitions"
  add_foreign_key "results", "users"
  add_foreign_key "stats", "competitions"
  add_foreign_key "stats", "users"
end
