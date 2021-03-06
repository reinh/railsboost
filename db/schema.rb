# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090310214842) do

  create_table "commands", :force => true do |t|
    t.string   "type"
    t.string   "permalink"
    t.string   "name"
    t.text     "options"
    t.text     "script"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "description"
  end

  create_table "dependencies", :force => true do |t|
    t.integer  "command_id"
    t.integer  "required_command_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_commands", :force => true do |t|
    t.integer  "template_id"
    t.integer  "command_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "global_options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
