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

ActiveRecord::Schema.define(version: 20160919093254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "publication_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["publication_id"], name: "index_comments_on_publication_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "connections", force: :cascade do |t|
    t.string   "status"
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_connections_on_followed_id", using: :btree
    t.index ["follower_id"], name: "index_connections_on_follower_id", using: :btree
  end

  create_table "debate_rooms", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "market_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["market_id"], name: "index_debate_rooms_on_market_id", using: :btree
    t.index ["user_id"], name: "index_debate_rooms_on_user_id", using: :btree
  end

  create_table "guest_boxes", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "host_id"
    t.integer  "debate_room_id"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["debate_room_id"], name: "index_guest_boxes_on_debate_room_id", using: :btree
    t.index ["guest_id"], name: "index_guest_boxes_on_guest_id", using: :btree
    t.index ["host_id"], name: "index_guest_boxes_on_host_id", using: :btree
  end

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "content"
    t.integer  "debate_room_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["debate_room_id"], name: "index_messages_on_debate_room_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "publications", force: :cascade do |t|
    t.string   "content"
    t.string   "theme"
    t.integer  "market_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_publications_on_market_id", using: :btree
    t.index ["user_id"], name: "index_publications_on_user_id", using: :btree
  end

  create_table "user_values", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_values_on_user_id", using: :btree
    t.index ["value_id"], name: "index_user_values_on_value_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "pseudo"
    t.string   "gender"
    t.string   "work_place"
    t.integer  "rating"
    t.text     "description"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "values", force: :cascade do |t|
    t.integer  "market_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_values_on_market_id", using: :btree
  end

  add_foreign_key "comments", "publications"
  add_foreign_key "comments", "users"
  add_foreign_key "debate_rooms", "users"
  add_foreign_key "guest_boxes", "debate_rooms"
  add_foreign_key "messages", "debate_rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "publications", "markets"
  add_foreign_key "publications", "users"
  add_foreign_key "user_values", "\"values\"", column: "value_id"
  add_foreign_key "user_values", "users"
  add_foreign_key "values", "markets"
end
