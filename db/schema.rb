# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_223219) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "sundae_id"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["sundae_id"], name: "index_purchases_on_sundae_id"
  end

  create_table "sundaes", force: :cascade do |t|
    t.json "ice_cream"
    t.json "topping"
  end

end
