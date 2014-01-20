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

ActiveRecord::Schema.define(:version => 20140117080647) do

  create_table "albums", :force => true do |t|
    t.integer  "place_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "avatar"
  end

  add_index "albums", ["place_id"], :name => "index_albums_on_place_id"

  create_table "comments", :force => true do |t|
    t.string   "comment_text"
    t.integer  "member_id"
    t.integer  "place_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comments", ["member_id"], :name => "index_comments_on_member_id"
  add_index "comments", ["place_id"], :name => "index_comments_on_place_id"

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.string   "country_pic"
    t.string   "country_descp"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "place_headtopic"
    t.string   "place_name"
    t.string   "place_location"
    t.string   "place_descp"
    t.integer  "country_id"
    t.integer  "member_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "places", ["country_id"], :name => "index_places_on_country_id"
  add_index "places", ["member_id"], :name => "index_places_on_member_id"

end
