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

ActiveRecord::Schema.define(version: 20160126091259) do

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
    t.boolean  "display"
    t.string   "linkedin"
    t.text     "biography"
    t.string   "eboard_position"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
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
    t.string   "placement"
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

  create_table "prospects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "rush_applications", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "year"
    t.string   "major"
    t.string   "major_gpa"
    t.string   "cumulative_gpa"
    t.integer  "sat_score"
    t.text     "classes_now"
    t.text     "extracurriculars"
    t.string   "hometown"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "transcript_file_name"
    t.string   "transcript_content_type"
    t.integer  "transcript_file_size"
    t.datetime "transcript_updated_at"
    t.string   "cover_letter_file_name"
    t.string   "cover_letter_content_type"
    t.integer  "cover_letter_file_size"
    t.datetime "cover_letter_updated_at"
    t.text     "how_did_you_hear"
  end

  create_table "rushee_comments", force: true do |t|
    t.text     "content"
    t.integer  "active_id"
    t.integer  "rushee_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rushee_comments", ["active_id", "created_at"], name: "index_rushee_comments_on_active_id_and_created_at"
  add_index "rushee_comments", ["active_id"], name: "index_rushee_comments_on_active_id"
  add_index "rushee_comments", ["rushee_profile_id"], name: "index_rushee_comments_on_rushee_profile_id"

  create_table "rushee_profiles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
