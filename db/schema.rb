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

ActiveRecord::Schema.define(:version => 20130913150918) do

  create_table "autors", :force => true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "autorslivros", :force => true do |t|
    t.integer  "livro_id"
    t.integer  "autor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "endbiblis", :force => true do |t|
    t.string   "rua"
    t.string   "bairro"
    t.integer  "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "listbiblis", :force => true do |t|
    t.string   "nome"
    t.integer  "telefone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "endbibli_id"
  end

  add_index "listbiblis", ["endbibli_id"], :name => "index_listbiblis_on_endbibli_id"

  create_table "listbiblislivros", :force => true do |t|
    t.integer  "livro_id"
    t.integer  "listbibli_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "livros", :force => true do |t|
    t.string   "nome"
    t.date     "data"
    t.string   "pais"
    t.string   "editora"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
