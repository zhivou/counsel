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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_035107) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "form_element_question_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_elements", force: :cascade do |t|
    t.string "title"
    t.text "subtitle"
    t.text "help_text"
    t.string "label"
    t.string "position"
    t.boolean "required"
    t.json "data"
    t.bigint "form_section_id"
    t.bigint "form_element_question_type_id"
    t.bigint "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_element_question_type_id"], name: "index_form_elements_on_form_element_question_type_id"
    t.index ["form_id"], name: "index_form_elements_on_form_id"
    t.index ["form_section_id"], name: "index_form_elements_on_form_section_id"
  end

  create_table "form_responses", force: :cascade do |t|
    t.json "repsonse_data", default: {}
    t.bigint "form_id"
    t.bigint "form_element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_element_id"], name: "index_form_responses_on_form_element_id"
    t.index ["form_id"], name: "index_form_responses_on_form_id"
  end

  create_table "form_section_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_sections", force: :cascade do |t|
    t.string "title"
    t.text "subtitle"
    t.string "positon"
    t.bigint "form_id"
    t.bigint "form_section_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_sections_on_form_id"
    t.index ["form_section_type_id"], name: "index_form_sections_on_form_section_type_id"
  end

  create_table "form_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "form_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_state_id"], name: "index_forms_on_form_state_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "form_elements", "form_element_question_types"
  add_foreign_key "form_elements", "form_sections"
  add_foreign_key "form_elements", "forms"
  add_foreign_key "form_responses", "form_elements"
  add_foreign_key "form_responses", "forms"
  add_foreign_key "form_sections", "form_section_types"
  add_foreign_key "form_sections", "forms"
  add_foreign_key "forms", "form_states"
end
