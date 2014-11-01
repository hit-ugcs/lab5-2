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

ActiveRecord::Schema.define(:version => 20141101151244) do

  create_table "students", :force => true do |t|
    t.string   "studentid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "nickname"
    t.integer  "finalgrade"
    t.integer  "lab1"
    t.integer  "lab2"
    t.integer  "lab3"
    t.integer  "lab4"
    t.integer  "lab5"
    t.integer  "lab6"
    t.integer  "lab7"
    t.integer  "class1"
    t.integer  "class2"
    t.integer  "class3"
    t.integer  "class4"
    t.integer  "class5"
    t.integer  "class6"
    t.integer  "class7"
    t.integer  "class8"
    t.integer  "class9"
    t.integer  "class10"
    t.integer  "project1"
    t.integer  "project2"
    t.integer  "project3"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
