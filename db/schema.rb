# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160216180330) do

  create_table "daily_writings", force: :cascade do |t|
    t.integer  "person_id"
    t.datetime "start_time"
    t.date     "end_time"
    t.decimal  "words"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "daily_writings", ["person_id"], name: "index_daily_writings_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "given"
    t.string   "family"
    t.string   "given_ph"
    t.string   "family_ph"
    t.string   "given_e"
    t.string   "family_e"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "address"
    t.string   "zip"
    t.string   "address_ph"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end