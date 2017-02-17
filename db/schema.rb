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

ActiveRecord::Schema.define(version: 20170216232410) do

  create_table "insurances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "active",              default: false
    t.integer  "vehicle_instance_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["vehicle_instance_id"], name: "index_insurances_on_vehicle_instance_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email",              default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nombre"
    t.string "apellido"
    t.string "documento"
    t.string "tipo_documento"
    t.string "telefono"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "vehicle_instances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "placa"
    t.string   "clase"
    t.string   "subtipo"
    t.integer  "edad"
    t.integer  "pasajeros"
    t.integer  "cilindraje"
    t.integer  "toneladas"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicle_instances_on_user_id", using: :btree
  end

end
