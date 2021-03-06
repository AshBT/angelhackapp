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

ActiveRecord::Schema.define(:version => 20130519030112) do

  create_table "Events", :force => true do |t|
    t.string   "event_type"
    t.datetime "trigger"
    t.datetime "end"
    t.string   "description"
    t.string   "action_taken"
    t.string   "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "reading_ibis", :force => true do |t|
    t.datetime "time"
    t.integer  "ibi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "readings", :force => true do |t|
    t.datetime "time"
    t.integer  "BPM"
    t.integer  "IBI"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.integer  "height"
    t.boolean  "diabetes"
    t.boolean  "tobacco"
    t.integer  "physical_activity"
    t.integer  "weight"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "image"
  end

end
