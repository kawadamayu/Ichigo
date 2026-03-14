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

ActiveRecord::Schema[7.2].define(version: 2026_03_14_080146) do
  create_table "perfumes", force: :cascade do |t|
    t.string "question1"
    t.string "question2"
    t.string "question3"
    t.string "question4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question5"
    t.string "question6"
    t.string "question7"
    t.string "question8"
    t.string "question9"
    t.string "question10"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "title"
    t.integer "sweet"
    t.string "place"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
