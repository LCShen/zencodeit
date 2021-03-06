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

ActiveRecord::Schema.define(version: 20101202094438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: true do |t|
    t.integer  "video_id"
    t.integer  "zencoder_id"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["video_id"], name: "index_jobs_on_video_id", using: :btree
  add_index "jobs", ["zencoder_id"], name: "index_jobs_on_zencoder_id", using: :btree

  create_table "outputs", force: true do |t|
    t.integer  "video_id"
    t.integer  "zencoder_id"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "outputs", ["video_id"], name: "index_outputs_on_video_id", using: :btree
  add_index "outputs", ["zencoder_id"], name: "index_outputs_on_zencoder_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", using: :btree

  create_table "videos", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.string   "encoding_identifier"
    t.string   "encoding_extension"
    t.integer  "encoding_size"
    t.string   "preview_identifier"
    t.string   "preview_extension"
    t.integer  "preview_size"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "videos", ["user_id"], name: "index_videos_on_user_id", using: :btree

end
