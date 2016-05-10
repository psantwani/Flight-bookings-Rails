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

ActiveRecord::Schema.define(version: 20160425114840) do

  create_table "airlines", force: :cascade do |t|
    t.string   "airline",    limit: 255
    t.text     "picture",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "email_id",       limit: 255
    t.string   "mobile",         limit: 255
    t.integer  "flight_id",      limit: 4
    t.string   "pnr",            limit: 255
    t.string   "price",          limit: 255
    t.string   "booking_status", limit: 255
    t.string   "nominee_mobile", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "city_airports", force: :cascade do |t|
    t.string   "city",       limit: 255
    t.string   "city_code",  limit: 255
    t.string   "airport",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "picture",    limit: 255
  end

  create_table "flights", force: :cascade do |t|
    t.string   "airline",            limit: 255
    t.string   "departure_airport",  limit: 255
    t.string   "arrival_airport",    limit: 255
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.string   "flight_status",      limit: 255
    t.datetime "rev_departure_time"
    t.datetime "rev_arrival_time"
    t.boolean  "is_delete"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "price",              limit: 255
  end

  create_table "popular_destinations", force: :cascade do |t|
    t.string   "city",             limit: 255
    t.string   "city_code",        limit: 255
    t.string   "destination",      limit: 255
    t.string   "destination_code", limit: 255
    t.boolean  "is_delete"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "trending_places", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "picture",    limit: 255
    t.boolean  "is_delete"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
