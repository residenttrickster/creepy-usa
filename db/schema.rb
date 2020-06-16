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

ActiveRecord::Schema.define(version: 2020_06_15_153400) do

  create_table "cautions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.integer "user_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_stories_on_location_id"
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "story_cautions", force: :cascade do |t|
    t.integer "story_id", null: false
    t.integer "caution_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caution_id"], name: "index_story_cautions_on_caution_id"
    t.index ["story_id"], name: "index_story_cautions_on_story_id"
  end

  create_table "story_genres", force: :cascade do |t|
    t.integer "story_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_story_genres_on_genre_id"
    t.index ["story_id"], name: "index_story_genres_on_story_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "stories", "locations"
  add_foreign_key "stories", "users"
  add_foreign_key "story_cautions", "cautions"
  add_foreign_key "story_cautions", "stories"
  add_foreign_key "story_genres", "genres"
  add_foreign_key "story_genres", "stories"
end
