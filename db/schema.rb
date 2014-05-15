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

ActiveRecord::Schema.define(version: 20140515061402) do

  create_table "analysysgroups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "analysysgroups_gadgets", force: true do |t|
    t.integer "analysysgroup_id"
    t.integer "gadget_id"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gadgets", force: true do |t|
    t.string   "title"
    t.string   "method_or_gadget"
    t.string   "useful_for"
    t.string   "analysis_group"
    t.string   "type_of_method_or_gadget"
    t.text     "gadget_description"
    t.decimal  "cost",                     precision: 10, scale: 0
    t.string   "company_name"
    t.text     "company_description"
    t.string   "company_website"
    t.string   "technology_used"
    t.text     "scientific_description"
    t.text     "field_1_explanation"
    t.string   "field_2_useful_for_which"
    t.text     "field_2_explanation"
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "CurrencyID"
    t.boolean  "evaluation_by_evaluator",                           default: false
    t.boolean  "evaluation_by_nrc",                                 default: false
    t.string   "qualifyareasofinterest"
    t.string   "email"
    t.string   "tooltousers"
    t.string   "gadgetwebsite"
    t.string   "brochure"
  end

  create_table "gadgets_qualifyareasofinterests", id: false, force: true do |t|
    t.integer "gadget_id"
    t.integer "qualifyareasofinterest_id"
  end

  create_table "gadgets_typeofmethods", force: true do |t|
    t.integer "typeofmethod_id"
    t.integer "gadget_id"
  end

  create_table "qualifyareasofinterests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role_name"
    t.string   "new_role_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "typeofmethods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "institution"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
