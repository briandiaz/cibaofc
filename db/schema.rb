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

ActiveRecord::Schema.define(version: 20150318053617) do

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

  create_table "games", force: true do |t|
    t.datetime "date"
    t.integer  "round_id"
    t.integer  "home_team"
    t.integer  "away_team"
    t.integer  "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["round_id"], name: "index_games_on_round_id", using: :btree
  add_index "games", ["stadium_id"], name: "index_games_on_stadium_id", using: :btree

  create_table "line_up_subs", force: true do |t|
    t.integer  "lineup_id"
    t.integer  "player_1"
    t.integer  "player_2"
    t.integer  "player_3"
    t.integer  "player_4"
    t.integer  "player_5"
    t.integer  "player_6"
    t.integer  "player_7"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_up_subs", ["lineup_id"], name: "index_line_up_subs_on_lineup_id", using: :btree

  create_table "line_ups", force: true do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "player_1"
    t.integer  "player_2"
    t.integer  "player_3"
    t.integer  "player_4"
    t.integer  "player_5"
    t.integer  "player_6"
    t.integer  "player_7"
    t.integer  "player_8"
    t.integer  "player_9"
    t.integer  "player_10"
    t.integer  "player_11"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_ups", ["game_id"], name: "index_line_ups_on_game_id", using: :btree
  add_index "line_ups", ["team_id"], name: "index_line_ups_on_team_id", using: :btree

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

  create_table "play_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "value"
    t.string   "commentary"
  end

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

  create_table "plays", force: true do |t|
    t.time     "time"
    t.decimal  "x_coordinate"
    t.decimal  "y_coordinate"
    t.integer  "by"
    t.integer  "assist_by"
    t.integer  "playtype_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plays", ["game_id"], name: "index_plays_on_game_id", using: :btree
  add_index "plays", ["playtype_id"], name: "index_plays_on_playtype_id", using: :btree

  create_table "positions", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.string   "name"
    t.integer  "season_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["season_id"], name: "index_rounds_on_season_id", using: :btree

  create_table "seasons", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seasons", ["country_id"], name: "index_seasons_on_country_id", using: :btree

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

  create_table "substitutions", force: true do |t|
    t.time     "time"
    t.integer  "player_in"
    t.integer  "player_out"
    t.integer  "game_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "substitutions", ["game_id"], name: "index_substitutions_on_game_id", using: :btree
  add_index "substitutions", ["team_id"], name: "index_substitutions_on_team_id", using: :btree

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
