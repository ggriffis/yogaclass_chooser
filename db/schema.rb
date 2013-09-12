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

ActiveRecord::Schema.define(:version => 20130912055851) do

  create_table "class_locations", :force => true do |t|
    t.string   "place"
    t.boolean  "close"
    t.boolean  "close_parking"
    t.boolean  "free_parking"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "class_types", :force => true do |t|
    t.string   "name"
    t.boolean  "like"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "class_category"
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.boolean  "like"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "yoga_classes", :force => true do |t|
    t.time     "time_of_day"
    t.string   "day_of_week"
    t.integer  "class_location_id"
    t.integer  "teacher_id"
    t.integer  "class_type_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "good_time"
    t.float    "duration"
    t.boolean  "favorite"
  end

end
