# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_14_170509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drones", force: :cascade do |t|
    t.integer "status", default: 0
    t.integer "position"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "engines", force: :cascade do |t|
    t.integer "status", default: 0
    t.integer "power_indicator", default: 0
    t.integer "drone_id"
  end

  create_table "gyroscopes", force: :cascade do |t|
    t.integer "drone_id"
    t.integer "vector_x"
    t.integer "velocity_vector_x"
    t.integer "vector_y"
    t.integer "velocity_vector_y"
    t.integer "vector_z"
    t.integer "velocity_vector_z"
  end

  create_table "orientation_sensors", force: :cascade do |t|
    t.integer "pitch", default: 0
    t.integer "roll", default: 0
    t.integer "drone_id"
  end

end
