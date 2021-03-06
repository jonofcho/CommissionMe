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

ActiveRecord::Schema.define(version: 20160927224649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.text     "field"
    t.text     "title"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "comment"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "resume_one_file_name"
    t.string   "resume_one_content_type"
    t.integer  "resume_one_file_size"
    t.datetime "resume_one_updated_at"
    t.string   "resume_two_file_name"
    t.string   "resume_two_content_type"
    t.integer  "resume_two_file_size"
    t.datetime "resume_two_updated_at"
    t.string   "resume_three_file_name"
    t.string   "resume_three_content_type"
    t.integer  "resume_three_file_size"
    t.datetime "resume_three_updated_at"
    t.integer  "user_id"
  end

  add_index "skills", ["user_id"], name: "index_skills_on_user_id", using: :btree

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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "first_name"
    t.text     "last_name"
    t.date     "date_of_birth"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "skills", "users"
end
