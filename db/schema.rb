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

ActiveRecord::Schema.define(version: 20140217194726) do

  create_table "estacaos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "linhas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locomotivas", force: true do |t|
    t.string   "nome"
    t.string   "modelo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradas", force: true do |t|
    t.integer  "linha_id"
    t.integer  "estacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paradas", ["estacao_id"], name: "index_paradas_on_estacao_id"
  add_index "paradas", ["linha_id"], name: "index_paradas_on_linha_id"

  create_table "tremlinhas", force: true do |t|
    t.string   "destino"
    t.integer  "locomotiva_id"
    t.integer  "linha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tremlinhas", ["linha_id"], name: "index_tremlinhas_on_linha_id"
  add_index "tremlinhas", ["locomotiva_id"], name: "index_tremlinhas_on_locomotiva_id"

end
