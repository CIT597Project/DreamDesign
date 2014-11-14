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

ActiveRecord::Schema.define(version: 20141111015820) do

  create_table "my_schools", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "user_id",    limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "school_id",  limit: nil
  end

  add_index "my_schools", ["school_id"], name: "index_my_schools_on_school_id"
  add_index "my_schools", ["user_id", "created_at"], name: "i_my_sch_use_id_cre_at"
  add_index "my_schools", ["user_id"], name: "index_my_schools_on_user_id"

  create_table "schools", id: false, force: true do |t|
    t.integer "Institution_ID",          limit: nil
    t.string  "Institution_Name"
    t.string  "Institution_Address"
    t.string  "Institution_City"
    t.string  "Institution_State"
    t.string  "Institution_Zip"
    t.string  "Institution_Phone"
    t.string  "Institution_Web_Address"
    t.string  "Accreditation_Status"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                             default: "", null: false
    t.string   "encrypted_password",                                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: nil, precision: 38, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

end
