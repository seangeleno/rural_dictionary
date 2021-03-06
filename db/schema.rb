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

ActiveRecord::Schema.define(version: 20160112003938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "definitions", force: :cascade do |t|
    t.text     "definition"
    t.integer  "vote_up"
    t.integer  "vote_down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "word_id"
  end

  add_index "definitions", ["user_id"], name: "index_definitions_on_user_id", using: :btree
  add_index "definitions", ["word_id"], name: "index_definitions_on_word_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name",          limit: 50
    t.string   "email",           limit: 50
    t.string   "password_digest"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "words", ["user_id"], name: "index_words_on_user_id", using: :btree

  add_foreign_key "definitions", "users"
  add_foreign_key "definitions", "words"
  add_foreign_key "words", "users"
end
