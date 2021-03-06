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

ActiveRecord::Schema.define(version: 20160823011905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "space_id"
    t.string   "purpose"
    t.integer  "state",      default: 0
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["space_id"], name: "index_bookings_on_space_id", using: :btree
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "code",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.string   "icon_url"
    t.index ["code"], name: "index_spaces_on_code", unique: true, using: :btree
    t.index ["name"], name: "index_spaces_on_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               null: false
    t.string   "name",                   null: false
    t.string   "color"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role",       default: 0
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
