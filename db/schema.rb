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

ActiveRecord::Schema[7.0].define(version: 2022_06_27_034810) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name0"
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.string "name4"
    t.string "name5"
    t.string "name6"
    t.string "name7"
    t.string "name8"
    t.string "name9"
    t.string "name10"
    t.string "name11"
    t.string "name12"
    t.string "name13"
    t.string "name14"
    t.string "name15"
    t.string "name16"
    t.string "name17"
    t.string "name18"
    t.string "name19"
    t.string "name20"
    t.string "name21"
    t.string "name22"
    t.string "name23"
    t.string "name24"
    t.string "name25"
    t.string "name26"
    t.string "name27"
    t.string "name28"
    t.string "name29"
    t.string "name30"
    t.string "name31"
    t.string "name32"
    t.string "name33"
    t.string "name34"
    t.string "name35"
    t.string "name36"
    t.string "name37"
    t.string "name38"
    t.string "name39"
    t.string "name40"
    t.string "name41"
    t.string "name42"
    t.string "name43"
    t.string "name44"
    t.string "name45"
    t.string "name46"
    t.string "name47"
    t.string "name48"
    t.string "name49"
    t.string "name50"
    t.string "name51"
    t.string "name52"
    t.string "name53"
    t.string "name54"
    t.string "name55"
    t.string "name56"
    t.string "name57"
    t.string "name58"
    t.string "name59"
    t.string "name60"
    t.string "name61"
    t.string "name62"
    t.string "name63"
    t.string "name64"
    t.string "name65"
    t.string "name66"
    t.string "name67"
    t.string "name68"
    t.string "name69"
    t.string "name70"
    t.string "name71"
    t.string "name72"
    t.string "name73"
    t.string "name74"
    t.string "name75"
    t.string "name76"
    t.string "name77"
    t.string "name78"
    t.string "name79"
    t.string "name80"
    t.string "name81"
    t.string "name82"
    t.string "name83"
    t.string "name84"
    t.string "name85"
    t.string "name86"
    t.string "name87"
    t.string "name88"
    t.string "name89"
    t.string "name90"
    t.string "name91"
    t.string "name92"
    t.string "name93"
    t.string "name94"
    t.string "name95"
    t.string "name96"
    t.string "name97"
    t.string "name98"
    t.string "name99"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "first_name"
    t.string "last_name"
    t.datetime "bird_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_users_on_profile_id"
  end

end
