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

ActiveRecord::Schema.define(version: 2013_06_28_082245) do

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_folders_on_parent_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "folder_id"
    t.integer "group_id"
    t.boolean "can_create"
    t.boolean "can_read"
    t.boolean "can_update"
    t.boolean "can_delete"
    t.index ["folder_id"], name: "index_permissions_on_folder_id"
    t.index ["group_id"], name: "index_permissions_on_group_id"
  end

  create_table "share_links", force: :cascade do |t|
    t.string "emails"
    t.string "link_token"
    t.datetime "link_expires_at"
    t.integer "user_file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
    t.integer "user_id"
    t.index ["user_file_id"], name: "index_share_links_on_user_file_id"
  end

  create_table "user_files", force: :cascade do |t|
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer "folder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_user_files_on_folder_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "hashed_password"
    t.string "password_salt"
    t.boolean "is_admin"
    t.string "remember_token"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "signup_token"
    t.datetime "signup_token_expires_at"
    t.index ["signup_token"], name: "index_users_on_signup_token"
  end

end
