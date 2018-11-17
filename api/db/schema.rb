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

ActiveRecord::Schema.define(version: 2018_11_17_194850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "languages", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_languages_on_project_id"
  end

  create_table "links", force: :cascade do |t|
    t.bigint "project_id"
    t.string "route"
    t.integer "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_links_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id"
    t.string "company"
    t.integer "stage"
    t.string "name_first"
    t.string "name_last"
    t.string "email"
    t.string "phone"
    t.string "address_street_1"
    t.string "address_street_2"
    t.string "address_city"
    t.integer "address_state"
    t.string "address_zipcode"
    t.integer "company_kind"
    t.text "mission_statement"
    t.text "who_you_are"
    t.text "who_you_help"
    t.text "what_you_do"
    t.text "current_services"
    t.integer "update_frequency"
    t.boolean "domain_registered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_services_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "languages", "projects"
  add_foreign_key "links", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "services", "projects"
end
