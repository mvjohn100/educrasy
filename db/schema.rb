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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110704072920) do

  create_table "admin_people", :force => true do |t|
    t.string   "name"
    t.integer  "lessonID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "administrators", :force => true do |t|
    t.string   "name"
    t.integer  "lessionID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_developers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.string   "name"
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_pages", :force => true do |t|
    t.integer  "lessonID"
    t.integer  "orderNo"
    t.string   "datasource"
    t.boolean  "datatype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", :force => true do |t|
    t.integer  "questionnaireID"
    t.string   "questionnaireName"
    t.integer  "questionID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_details", :force => true do |t|
    t.string   "name"
    t.string   "classname"
    t.string   "standard"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "classname"
    t.string   "standard"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supports", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_details", :force => true do |t|
    t.integer  "lessionID"
    t.string   "classname"
    t.integer  "classID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.integer  "lessionID"
    t.string   "classname"
    t.integer  "classID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
