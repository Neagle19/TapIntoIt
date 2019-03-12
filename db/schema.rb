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

ActiveRecord::Schema.define(version: 2019_03_12_160623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.date "bottled_date"
    t.bigint "brewery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_batches_on_brewery_id"
  end

  create_table "beers", force: :cascade do |t|
    t.bigint "brewery_id"
    t.string "name"
    t.string "kind"
    t.string "size"
    t.float "alcohol_percentage"
    t.bigint "batch_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["batch_id"], name: "index_beers_on_batch_id"
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.text "description"
    t.string "address"
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_beers", force: :cascade do |t|
    t.bigint "review_beer_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_beer_id"], name: "index_comment_beers_on_review_beer_id"
    t.index ["user_id"], name: "index_comment_beers_on_user_id"
  end

  create_table "comment_breweries", force: :cascade do |t|
    t.bigint "review_brewery_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_brewery_id"], name: "index_comment_breweries_on_review_brewery_id"
    t.index ["user_id"], name: "index_comment_breweries_on_user_id"
  end

  create_table "friend_connections", force: :cascade do |t|
    t.bigint "requester_id"
    t.bigint "receiver_id"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_friend_connections_on_receiver_id"
    t.index ["requester_id"], name: "index_friend_connections_on_requester_id"
  end

  create_table "like_beers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "review_beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_beer_id"], name: "index_like_beers_on_review_beer_id"
    t.index ["user_id"], name: "index_like_beers_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "review_beers", force: :cascade do |t|
    t.bigint "beer_id"
    t.text "content"
    t.integer "rating"
    t.bigint "user_id"
    t.boolean "posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["beer_id"], name: "index_review_beers_on_beer_id"
    t.index ["user_id"], name: "index_review_beers_on_user_id"
  end

  create_table "review_breweries", force: :cascade do |t|
    t.bigint "brewery_id"
    t.text "content"
    t.integer "rating"
    t.bigint "user_id"
    t.boolean "posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["brewery_id"], name: "index_review_breweries_on_brewery_id"
    t.index ["user_id"], name: "index_review_breweries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "location"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batches", "breweries"
  add_foreign_key "beers", "batches"
  add_foreign_key "beers", "breweries"
  add_foreign_key "comment_beers", "review_beers"
  add_foreign_key "comment_beers", "users"
  add_foreign_key "comment_breweries", "review_breweries"
  add_foreign_key "comment_breweries", "users"
  add_foreign_key "friend_connections", "users", column: "receiver_id"
  add_foreign_key "friend_connections", "users", column: "requester_id"
  add_foreign_key "like_beers", "review_beers"
  add_foreign_key "like_beers", "users"
  add_foreign_key "review_beers", "beers"
  add_foreign_key "review_beers", "users"
  add_foreign_key "review_breweries", "breweries"
  add_foreign_key "review_breweries", "users"
end
