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

ActiveRecord::Schema.define(version: 20161102230406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_themes", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_themes_on_article_id", using: :btree
    t.index ["theme_id"], name: "index_article_themes_on_theme_id", using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "fr_name"
    t.string   "en_name"
    t.string   "zh_name"
    t.string   "date"
    t.text     "content"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "author_id"
    t.text     "comment"
    t.index ["author_id"], name: "index_articles_on_author_id", using: :btree
  end

  create_table "articles_themes", force: :cascade do |t|
  end

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "password_digest"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "role"
    t.index ["email"], name: "index_authors_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true, using: :btree
  end

  create_table "themes", id: :integer, force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "theme_number"
  end

  add_foreign_key "articles", "authors"
end
