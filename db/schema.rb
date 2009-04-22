# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090422004712) do

  create_table "class_locations", :force => true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "class_schedules", :force => true do |t|
    t.datetime "created_on"
    t.datetime "updated_on"
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "class_begins_time"
    t.time     "class_ends_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name_last"
    t.string   "name_first"
    t.string   "name_middle"
    t.string   "phone_mobile"
    t.string   "phone_home"
    t.string   "email_address_personal"
    t.string   "email_address_office"
    t.string   "professional_title"
    t.datetime "created_on"
    t.datetime "updated_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end