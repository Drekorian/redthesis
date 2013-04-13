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

ActiveRecord::Schema.define(:version => 20130216233605) do

  create_table "sections", :force => true do |t|
    t.string "name", :limit => 50, :null => false
  end

  create_table "solutions", :force => true do |t|
    t.integer "thesis_id",            :null => false
    t.integer "student_id",           :null => false
    t.integer "university_leader_id", :null => false
    t.text    "assignment",           :null => false
  end

  create_table "theses", :force => true do |t|
    t.string  "name",              :limit => 50, :null => false
    t.integer "thesis_type",       :limit => 1,  :null => false
    t.text    "description",                     :null => false
    t.integer "status",            :limit => 1,  :null => false
    t.integer "red_hat_leader_id",               :null => false
    t.integer "section_id"
  end

  create_table "universities", :force => true do |t|
    t.string "name", :limit => 100, :null => false
  end

  create_table "universities_available_theses", :force => true do |t|
    t.integer "university_id", :null => false
    t.integer "thesis_id",     :null => false
  end

  create_table "users", :force => true do |t|
    t.integer "user_type",     :limit => 1,  :null => false
    t.string  "first_name",    :limit => 30, :null => false
    t.string  "middle_names",  :limit => 50
    t.string  "last_name",     :limit => 30, :null => false
    t.string  "email",         :limit => 50, :null => false
    t.string  "password",                    :null => false
    t.string  "salt",          :limit => 16, :null => false
    t.integer "university_id"
  end

end
