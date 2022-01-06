# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_06_032532) do

  create_table "likes", force: :cascade do |t|
    t.integer "mainnote_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mainnote_id"], name: "index_likes_on_mainnote_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "mainnotes", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "target"
    t.string "category"
    t.string "thingstoprepare"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mainnotes_on_user_id"
  end

  create_table "notecomments", force: :cascade do |t|
    t.text "comment"
    t.integer "future_point"
    t.integer "surprisingly_point"
    t.integer "realization_point"
    t.integer "user_id"
    t.integer "mainnote_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mainnote_id"], name: "index_notecomments_on_mainnote_id"
    t.index ["user_id"], name: "index_notecomments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "occupation"
    t.string "image"
    t.string "award"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "uses", force: :cascade do |t|
    t.integer "mainnote_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mainnote_id"], name: "index_uses_on_mainnote_id"
    t.index ["user_id"], name: "index_uses_on_user_id"
  end

  add_foreign_key "likes", "mainnotes"
  add_foreign_key "likes", "users"
  add_foreign_key "mainnotes", "users"
  add_foreign_key "notecomments", "mainnotes"
  add_foreign_key "notecomments", "users"
  add_foreign_key "uses", "mainnotes"
  add_foreign_key "uses", "users"
end
