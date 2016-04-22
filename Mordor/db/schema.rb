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

ActiveRecord::Schema.define(version: 20160321191919) do

  create_table "groups", force: :cascade do |t|
    t.text     "name"
    t.integer  "user_id"
    t.integer  "members"
    t.integer  "member1"
    t.integer  "member2"
    t.integer  "member3"
    t.integer  "member4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_owner"
    t.text     "members",        default: "--- []\n"
    t.text     "member1"
    t.text     "member2"
    t.text     "member3"
    t.text     "member4"
    t.text     "url"
    t.text     "login_name"
    t.text     "login_password"
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
