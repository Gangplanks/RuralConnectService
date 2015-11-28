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

ActiveRecord::Schema.define(version: 20151128063006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "community_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "community_id"
    t.string   "type"
    t.binary   "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "scheme_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "scheme_id"
    t.string   "type"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schemes", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.string   "beneficiaries"
    t.string   "funding_pattern"
    t.string   "jurisdiction"
    t.string   "age_eligible"
    t.string   "income_eligible"
    t.string   "community_eligible"
    t.string   "others_eligible"
    t.string   "avail_from"
    t.string   "valid_from"
    t.string   "valid_till"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "schemes_old", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.string   "beneficiaries"
    t.string   "funding_pattern"
    t.string   "jurisdiction"
    t.string   "age_eligible"
    t.string   "income_eligible"
    t.string   "community_eligible"
    t.string   "others_eligible"
    t.string   "avail_from"
    t.string   "valid_from"
    t.string   "valid_till"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "user_scheme_favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "scheme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "age"
    t.string   "income"
    t.string   "community"
    t.string   "occupation"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ratings", "schemes"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "schemes"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_scheme_favorites", "schemes"
  add_foreign_key "user_scheme_favorites", "users"
end
