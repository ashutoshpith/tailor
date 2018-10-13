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

ActiveRecord::Schema.define(version: 2018_10_13_114454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "avail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.bigint "company_id"
    t.string "name"
    t.integer "avail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_models_on_company_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "issue"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "repair_id"
    t.index ["repair_id"], name: "index_problems_on_repair_id"
  end

  create_table "repair_problems", force: :cascade do |t|
    t.bigint "repair_id"
    t.bigint "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["problem_id"], name: "index_repair_problems_on_problem_id"
    t.index ["repair_id"], name: "index_repair_problems_on_repair_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.bigint "model_id"
    t.bigint "problem_id"
    t.string "other"
    t.datetime "pick_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "repair_problem_id"
    t.index ["model_id"], name: "index_repairs_on_model_id"
    t.index ["problem_id"], name: "index_repairs_on_problem_id"
    t.index ["repair_problem_id"], name: "index_repairs_on_repair_problem_id"
  end

  add_foreign_key "models", "companies"
  add_foreign_key "problems", "repairs"
  add_foreign_key "repair_problems", "problems"
  add_foreign_key "repair_problems", "repairs"
  add_foreign_key "repairs", "models"
  add_foreign_key "repairs", "problems"
  add_foreign_key "repairs", "repair_problems"
end
