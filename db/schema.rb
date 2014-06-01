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

ActiveRecord::Schema.define(:version => 20140530062425) do

  create_table "answers", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "sex",           :null => false
    t.string   "age",           :null => false
    t.string   "tel",           :null => false
    t.string   "fbid",          :null => false
    t.string   "email",         :null => false
    t.text     "reason",        :null => false
    t.text     "date_and_time", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

  create_table "user_agents", :force => true do |t|
    t.string   "viewed_sections", :null => false
    t.string   "uid",             :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.time     "first_time"
    t.time     "last_time"
  end

  add_index "user_agents", ["uid"], :name => "index_user_agents_on_uid", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => ""
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
    t.string   "name"
    t.integer  "uid"
    t.string   "provider"
    t.string   "provider_image_url"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "nomail"
    t.string   "nomail_token",                           :null => false
  end

  add_index "users", ["nomail_token"], :name => "index_users_on_nomail_token", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
