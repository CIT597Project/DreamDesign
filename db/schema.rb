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

<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20141108071032) do
=======
ActiveRecord::Schema.define(version: 20141109035141) do
>>>>>>> Stashed changes

  create_table "my_schools", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "my_schools", ["user_id", "created_at"], name: "index_my_schools_on_user_id_and_created_at"
  add_index "my_schools", ["user_id"], name: "index_my_schools_on_user_id"

  create_table "schoollists", force: true do |t|
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: true do |t|
    t.integer  "UNITID"
    t.string   "INSTNM"
    t.string   "ADDR"
    t.string   "CITY"
    t.string   "STABBR"
    t.string   "ZIP"
    t.integer  "FIPS"
    t.integer  "OBEREG"
    t.string   "CHFNM"
    t.string   "CHFTITLE"
    t.integer  "GENTELE"
    t.integer  "FAXTELE"
    t.integer  "EIN"
    t.integer  "OPEID"
    t.integer  "OPEFLAG"
    t.string   "WEBADDR"
    t.string   "ADMINURL"
    t.string   "FAIDURL"
    t.string   "string"
    t.string   "APPLURL"
    t.string   "NPRICURL"
    t.integer  "SECTOR"
    t.integer  "ICLEVEL"
    t.integer  "CONTROL"
    t.integer  "HLOFFER"
    t.integer  "UGOFFER"
    t.integer  "GROFFER"
    t.integer  "HDEGOFR1"
    t.integer  "DEGGRANT"
    t.integer  "HBCU"
    t.integer  "HOSPITAL"
    t.integer  "MEDICAL"
    t.integer  "TRIBAL"
    t.integer  "LOCALE"
    t.integer  "OPENPUBL"
    t.string   "ACT"
    t.integer  "NEWID"
    t.integer  "DEATHYR"
    t.integer  "CLOSEDAT"
    t.integer  "CYACTIVE"
    t.integer  "POSTSEC"
    t.integer  "PSEFLAG"
    t.integer  "PSET4FLG"
    t.integer  "RPTMTH"
    t.string   "IALIAS"
    t.integer  "INSTCAT"
    t.integer  "CCBASIC"
    t.integer  "CCIPUG"
    t.integer  "CCIPGRAD"
    t.integer  "CCUGPROF"
    t.integer  "CCENRPRF"
    t.integer  "CCSIZSET"
    t.integer  "CARNEGIE"
    t.integer  "LANDGRNT"
    t.integer  "INSTSIZE"
    t.integer  "CBSA"
    t.integer  "CBSATYPE"
    t.integer  "CSA"
    t.integer  "NECTA"
    t.integer  "F1SYSTYP"
    t.string   "F1SYSNAM"
    t.integer  "F1SYSCOD"
    t.integer  "COUNTYCD"
    t.string   "COUNTYNM"
    t.integer  "CNGDSTCD"
    t.float    "LONGITUD"
    t.float    "LATITUDE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
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
    t.string   "picture"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
