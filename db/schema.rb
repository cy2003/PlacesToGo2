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

ActiveRecord::Schema.define(version: 20170410155709) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.text     "note"
    t.string   "hotelable_type"
    t.integer  "hotelable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["hotelable_type", "hotelable_id"], name: "index_hotels_on_hotelable_type_and_hotelable_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.text     "note"
    t.string   "restable_type"
    t.integer  "restable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restable_type", "restable_id"], name: "index_restaurants_on_restable_type_and_restable_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.text     "note"
    t.string   "siteable_type"
    t.integer  "siteable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["siteable_type", "siteable_id"], name: "index_sites_on_siteable_type_and_siteable_id"
  end

  create_table "user_countries", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_user_countries_on_country_id"
    t.index ["user_id", "country_id"], name: "index_user_countries_on_user_id_and_country_id", unique: true
    t.index ["user_id"], name: "index_user_countries_on_user_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id", "location_id"], name: "index_user_locations_on_user_id_and_location_id", unique: true
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
