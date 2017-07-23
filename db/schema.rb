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

ActiveRecord::Schema.define(version: 20170723160055) do

  create_table "bestaccreditedstudentbranches", force: :cascade do |t|
    t.integer  "institution_membership_no"
    t.text     "name_of_the_institution"
    t.text     "postal_address"
    t.string   "city"
    t.string   "pin"
    t.string   "state"
    t.string   "phone_number"
    t.string   "emailID"
    t.string   "SBC_name"
    t.string   "SBC_designation"
    t.string   "SBC_department"
    t.string   "SBC_emailID"
    t.string   "SBC_phone_number"
    t.string   "SBC_CSI_membership_no"
    t.integer  "no_of_csi_voulenteers"
    t.integer  "no_of_csi_voulenteers_added"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "bestcsiinternationalstudentseventhosts", force: :cascade do |t|
    t.integer  "institution_membership_no"
    t.date     "validity"
    t.text     "name_of_the_institution"
    t.text     "postal_address"
    t.string   "city"
    t.string   "pin"
    t.string   "state"
    t.string   "phone_number"
    t.string   "emailID"
    t.string   "SBC_name"
    t.string   "SBC_designation"
    t.string   "SBC_department"
    t.string   "SBC_emailID"
    t.string   "SBC_phone_number"
    t.date     "Institution_membership_joining_date"
    t.date     "Institution_membership_valid_till"
    t.integer  "no_of_csi_voulenteers"
    t.integer  "no_of_csi_voulenteers_added"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "facmaxpublishings", force: :cascade do |t|
    t.string   "name_of_faculty"
    t.text     "name_of_the_institution"
    t.text     "postal_address"
    t.string   "city"
    t.string   "pin"
    t.string   "state"
    t.string   "phone_number"
    t.string   "emailID"
    t.string   "name_of_head_of_institution"
    t.string   "designation"
    t.string   "head_of_institution_emailID"
    t.string   "candidate_emailID"
    t.string   "Institution_membership_number"
    t.date     "Institution_membership_valid_till"
    t.string   "candidate_csi_membership_number"
    t.date     "candidate_csi_membership_number_valid_till"
    t.boolean  "institution_has_student_branch"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "highestsponsorshipofcsievents", force: :cascade do |t|
    t.integer  "institution_membership_no"
    t.date     "validity"
    t.text     "name_of_the_institution"
    t.text     "postal_address"
    t.string   "city"
    t.string   "pin"
    t.string   "state"
    t.string   "phone_number"
    t.string   "emailID"
    t.string   "SBC_name"
    t.string   "SBC_designation"
    t.string   "SBC_department"
    t.string   "SBC_emailID"
    t.string   "SBC_phone_number"
    t.date     "Institution_membership_joining_date"
    t.date     "Institution_membership_valid_till"
    t.integer  "no_of_csi_voulenteers"
    t.integer  "no_of_csi_voulenteers_added"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "longestcontinuoussbcs", force: :cascade do |t|
    t.string   "name_of_the_sbc_nominating_self"
    t.text     "name_of_the_institution"
    t.text     "postal_address"
    t.string   "city"
    t.string   "pin"
    t.string   "state"
    t.string   "phone_number"
    t.string   "emailID"
    t.string   "name_of_head_of_institution"
    t.string   "SBC_designation"
    t.string   "head_of_institution_emailID"
    t.string   "SBC_emailID"
    t.string   "SBC_phone_number"
    t.string   "Institution_membership_number"
    t.date     "Institution_membership_valid_till"
    t.string   "candidate_csi_membership_number"
    t.date     "candidate_csi_membership_number_valid_till"
    t.integer  "no_of_csi_voulenteers"
    t.integer  "no_of_csi_voulenteers_added"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
