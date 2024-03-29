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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130414052108) do

  create_table "answers", :force => true do |t|
    t.text     "answer"
    t.integer  "question_id"
    t.boolean  "correct_answer"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "question"
    t.text     "answer"
    t.string   "correctanswer"
    t.integer  "difficulty"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "quiz_id"
  end

  create_table "quizzes", :force => true do |t|
    t.string   "title"
    t.integer  "difficulty"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
