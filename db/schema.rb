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

ActiveRecord::Schema.define(version: 20141217000207) do

  create_table "appearances", force: true do |t|
    t.integer  "user_id"
    t.integer  "medium_id"
    t.datetime "first_appearance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string  "type"
    t.string  "name"
    t.integer "user_id"
  end

  create_table "media_users", id: false, force: true do |t|
    t.integer "user_id",   null: false
    t.integer "medium_id", null: false
  end

  add_index "media_users", ["medium_id", "user_id"], name: "index_media_users_on_medium_id_and_user_id"
  add_index "media_users", ["user_id", "medium_id"], name: "index_media_users_on_user_id_and_medium_id"

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "relation_id"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string  "type"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "alias"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "hair_color"
    t.string   "eye_color"
    t.string   "orientation"
    t.string   "race"
    t.string   "nationality"
    t.string   "hometown"
    t.string   "occupation"
    t.string   "income"
    t.string   "religion"
    t.string   "special_attributes"
    t.string   "skills"
    t.string   "birth_order"
    t.string   "relationship_skills"
    t.string   "corrective_lenses"
    t.string   "vices"
    t.string   "health"
    t.string   "disabilities"
    t.string   "education"
    t.string   "intelligence"
    t.string   "mental_illnesses"
    t.text     "distinguishing_features"
    t.text     "preferred_dress"
    t.text     "mannerisms"
    t.text     "hobbies"
    t.text     "speech_patterns"
    t.text     "strengths"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.text     "outside_relations"
    t.string   "avatar"
    t.datetime "date_of_birth"
    t.integer  "feet"
    t.integer  "inches"
  end

end
