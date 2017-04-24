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

ActiveRecord::Schema.define(version: 20170424082324) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "address"
    t.decimal  "lat",               precision: 10, scale: 6
    t.decimal  "lng",               precision: 10, scale: 6
    t.string   "comment"
    t.string   "addressowner_type"
    t.integer  "addressowner_id"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["addressowner_type", "addressowner_id"], name: "index_addresses_on_addressowner_type_and_addressowner_id", using: :btree
  end

  create_table "couriers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mobile",                 default: ""
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "locked_at"
    t.string   "name"
    t.boolean  "status",                 default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["mobile"], name: "index_couriers_on_mobile", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_couriers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "couriers_stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "courier_id"
    t.integer "station_id"
    t.index ["courier_id"], name: "index_couriers_stations_on_courier_id", using: :btree
    t.index ["station_id"], name: "index_couriers_stations_on_station_id", using: :btree
  end

  create_table "factories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "factory_ID",             default: "",    null: false
    t.string   "mobile",                 default: ""
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "tel"
    t.boolean  "status",                 default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["mobile"], name: "index_factories_on_mobile", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_factories_on_reset_password_token", unique: true, using: :btree
  end

  create_table "factories_stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "factory_id"
    t.integer "station_id"
    t.index ["factory_id"], name: "index_factories_stations_on_factory_id", using: :btree
    t.index ["station_id"], name: "index_factories_stations_on_station_id", using: :btree
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_regions_on_parent_id", using: :btree
  end

  create_table "stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address"
    t.string   "comment"
    t.decimal  "lat",        precision: 10, scale: 6
    t.decimal  "lng",        precision: 10, scale: 6
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "region_id"
    t.index ["region_id"], name: "index_stations_on_region_id", using: :btree
  end

  create_table "worker_messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "worker_id"
    t.string   "worker_name"
    t.string   "sex"
    t.integer  "age"
    t.date     "birthday"
    t.string   "role"
    t.string   "academic"
    t.integer  "factory_id"
    t.string   "region"
    t.string   "delFlag"
    t.string   "S_01"
    t.string   "S_o2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "workeraccounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["id"], name: "index_workeraccounts_on_id", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_workeraccounts_on_reset_password_token", unique: true, using: :btree
  end

end
