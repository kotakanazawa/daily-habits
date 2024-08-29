ActiveRecord::Schema[7.2].define(version: 2024_08_29_072719) do
  create_table "habits", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
