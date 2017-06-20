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

ActiveRecord::Schema.define(version: 20170620043011) do

  create_table "drivers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers_vehicles", id: false, force: :cascade do |t|
    t.integer "driver_id"
    t.integer "vehicle_id"
    t.index ["driver_id"], name: "index_drivers_vehicles_on_driver_id"
    t.index ["vehicle_id"], name: "index_drivers_vehicles_on_vehicle_id"
  end

  create_table "fleets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fleets_vehicles", id: false, force: :cascade do |t|
    t.integer "fleet_id"
    t.integer "vehicle_id"
    t.index ["fleet_id"], name: "index_fleets_vehicles_on_fleet_id"
    t.index ["vehicle_id"], name: "index_fleets_vehicles_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.datetime "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
