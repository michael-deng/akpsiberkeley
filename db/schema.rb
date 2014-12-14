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

ActiveRecord::Schema.define(version: 20141214031807) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "actives", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "major"
    t.string   "pledge_class"
    t.string   "hometown"
    t.string   "previous_positions"
    t.boolean  "eboard"
    t.boolean  "display"
    t.string   "linkedin"
    t.text     "biography"
  end

  add_index "actives", ["email"], name: "index_actives_on_email", unique: true
  add_index "actives", ["reset_password_token"], name: "index_actives_on_reset_password_token", unique: true

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "awards", force: true do |t|
    t.string   "name"
    t.string   "members"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "career_entries", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "group"
    t.integer  "year"
    t.string   "location"
    t.string   "job_category"
    t.integer  "active_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fulltime_or_intern"
  end

  create_table "rushees", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "major"
    t.string   "gpa"
    t.string   "course1"
    t.string   "course1_grade"
    t.string   "course2"
    t.string   "course2_grade"
    t.string   "course3"
    t.string   "course3_grade"
    t.string   "course4"
    t.string   "course4_grade"
    t.string   "course5"
    t.string   "course5_grade"
    t.string   "course6"
    t.string   "course6_grade"
    t.boolean  "cut"
  end

  add_index "rushees", ["email"], name: "index_rushees_on_email", unique: true
  add_index "rushees", ["reset_password_token"], name: "index_rushees_on_reset_password_token", unique: true

end
