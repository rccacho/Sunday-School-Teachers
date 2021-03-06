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

ActiveRecord::Schema.define(version: 20170412050748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "key_verse"
    t.string   "review"
    t.string   "description"
    t.string   "materials"
    t.string   "media_ref"
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "grade"
    t.index ["message_id"], name: "index_activities_on_message_id", using: :btree
    t.index ["user_id"], name: "index_activities_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "series"
    t.string   "title"
    t.string   "content"
    t.string   "costumes"
    t.string   "props"
    t.boolean  "featured"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "birthday"
    t.string   "phone"
    t.string   "grade"
    t.string   "image"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_foreign_key "activities", "messages"
  add_foreign_key "activities", "users"
  add_foreign_key "messages", "users"
end
