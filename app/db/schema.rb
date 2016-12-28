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

ActiveRecord::Schema.define(version: 20161228181143) do

  create_table "kategoria", force: :cascade do |t|
    t.string "nazwa_kategorii"
    t.string "opis_kategorii"
    t.string "obraz_kategorii"
  end

  create_table "klients", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "password"
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "miejscowosc"
    t.string   "ulica"
    t.string   "poczta"
    t.string   "kraj"
    t.integer  "nr_telefonu"
    t.integer  "nr_domu"
    t.integer  "nr_mieszkania"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platnoscs", force: :cascade do |t|
    t.string "typ_platnosci"
  end

  create_table "produkts", force: :cascade do |t|
    t.string  "kod_produktu"
    t.string  "nazwa_produktu"
    t.string  "obraz_produktu"
    t.string  "opis_produktu"
    t.integer "cena_produktu"
    t.integer "id_kategorii"
  end

  create_table "szczegolies", force: :cascade do |t|
    t.integer "ilosc_produktow"
    t.integer "cena_calkowita"
    t.integer "id_zamowienia"
    t.integer "id_produktu"
    t.integer "create_at"
    t.string  "kod_produktu"
    t.integer "cena_produktu"
  end

  create_table "zamowienies", force: :cascade do |t|
    t.string   "nr_zamowienia"
    t.integer  "id_zamowienia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "klient_id"
    t.integer  "platnosc_id"
  end

end
