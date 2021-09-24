  enable_extension "plpgsql"

  create_table "measurements", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_measurements_on_name"
    t.index ["photo"], name: "index_measurements_on_photo"
  end

  create_table "measures", force: :cascade do |t|
    t.float "data"
    t.bigint "measurement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["data"], name: "index_measures_on_data"
    t.index ["measurement_id"], name: "index_measures_on_measurement_id"
  end

  add_foreign_key "measures", "measurements"
end
