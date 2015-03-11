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

ActiveRecord::Schema.define(version: 20150310185736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "iso"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "sur_name"
    t.string   "sex"
    t.string   "identification_number"
    t.date     "birthdate"
    t.string   "phone"
    t.string   "mobile"
    t.string   "additional_phone"
    t.string   "email"
    t.decimal  "salary"
    t.text     "additional_information"
    t.string   "photo"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "people", ["city_id"], name: "index_people_on_city_id", using: :btree
  add_index "people", ["country_id"], name: "index_people_on_country_id", using: :btree

  create_table "players", force: true do |t|
    t.decimal  "height"
    t.decimal  "weight"
    t.integer  "shirt_number"
    t.date     "debut_date"
    t.integer  "person_id"
    t.integer  "team_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["person_id"], name: "index_players_on_person_id", using: :btree
  add_index "players", ["position_id"], name: "index_players_on_position_id", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "positions", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadiums", force: true do |t|
    t.string   "name"
    t.date     "founded_date"
    t.decimal  "length"
    t.decimal  "width"
    t.integer  "capacity"
    t.string   "photo"
    t.integer  "country_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stadiums", ["city_id"], name: "index_stadiums_on_city_id", using: :btree
  add_index "stadiums", ["country_id"], name: "index_stadiums_on_country_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.date     "founded_date"
    t.decimal  "value"
    t.integer  "stadium_id"
    t.integer  "country_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["city_id"], name: "index_teams_on_city_id", using: :btree
  add_index "teams", ["country_id"], name: "index_teams_on_country_id", using: :btree
  add_index "teams", ["stadium_id"], name: "index_teams_on_stadium_id", using: :btree

  create_table "tech_roles", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technical_staffs", force: true do |t|
    t.integer  "person_id"
    t.integer  "team_id"
    t.integer  "tech_role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "technical_staffs", ["person_id"], name: "index_technical_staffs_on_person_id", using: :btree
  add_index "technical_staffs", ["team_id"], name: "index_technical_staffs_on_team_id", using: :btree
  add_index "technical_staffs", ["tech_role_id"], name: "index_technical_staffs_on_tech_role_id", using: :btree

end
