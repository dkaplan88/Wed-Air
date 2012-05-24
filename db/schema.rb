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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120524230134) do

  create_table "flights", :force => true do |t|
    t.integer  "number"
    t.string   "departure_airport_code"
    t.time     "departs_at"
    t.string   "arrival_airport_code"
    t.integer  "distance"
    t.integer  "seats"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.time     "arrives_at"
  end

  create_table "reservations", :force => true do |t|
    t.integer  "flight_id"
    t.integer  "user_id"
    t.date     "date"
    t.integer  "card"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "miles"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
