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

ActiveRecord::Schema.define(version: 20130622192526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.string   "surname",                     null: false
    t.string   "given_name",                  null: false
    t.string   "position",                    null: false
    t.integer  "year",                        null: false
    t.integer  "games",           default: 0, null: false
    t.integer  "games_started",   default: 0, null: false
    t.integer  "at_bats",         default: 0, null: false
    t.integer  "runs",            default: 0, null: false
    t.integer  "hits",            default: 0, null: false
    t.integer  "doubles",         default: 0, null: false
    t.integer  "triples",         default: 0, null: false
    t.integer  "home_runs",       default: 0, null: false
    t.integer  "rbi",             default: 0, null: false
    t.integer  "steals",          default: 0, null: false
    t.integer  "caught_stealing", default: 0, null: false
    t.integer  "sacrifice_hits",  default: 0, null: false
    t.integer  "sacrifice_flies", default: 0, null: false
    t.integer  "fielding_errors", default: 0
    t.integer  "pb",              default: 0, null: false
    t.integer  "walks",           default: 0, null: false
    t.integer  "struck_out",      default: 0, null: false
    t.integer  "hit_by_pitch",    default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
