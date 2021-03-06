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

ActiveRecord::Schema.define(version: 20180130134352) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "environments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "alert_mailaddr", limit: 128
  end

  create_table "information", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", comment: "登録日時"
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false, comment: "更新日時"
    t.integer "service", comment: "サービスID"
    t.integer "group", comment: "グループID"
    t.integer "category", comment: "機器種別ID"
    t.integer "environment", comment: "環境ID"
    t.string "name", null: false, comment: "機器名"
    t.string "serial", comment: "シリアルナンバー"
    t.string "server_name", null: false, comment: "サーバー名"
    t.string "support_contact", comment: "保守ベンダー"
    t.date "support_contact_period", comment: "保守契約期間"
    t.string "support_id", comment: "保守番号"
    t.string "hard_support_conditions", comment: "ハード保守条件"
    t.string "hard_contact_tel", comment: "ハード保守電話番号"
    t.string "hard_contact_mail", comment: "ハード保守メールアドレス"
    t.string "hard_contact_other", limit: 1024, comment: "ハード保守その他"
    t.string "soft_support_conditions", comment: "ソフト保守条件"
    t.string "soft_contact_tel", comment: "ソフト保守電話番号"
    t.string "soft_contact_mail", comment: "ソフト保守メールアドレス"
    t.string "soft_contact_other", limit: 1024, comment: "ソフト保守その他"
    t.string "os_version", comment: "OSバージョン"
    t.date "eos_hard", comment: "ハード保守期限"
    t.date "eos_soft", comment: "ソフト保守期限"
    t.string "sales_contact", comment: "営業担当者"
    t.string "sales_contact_tel", comment: "営業電話番号"
    t.string "sales_contact_mail", comment: "営業メールアドレス"
    t.string "remarks_1", limit: 1024, comment: "備考1"
    t.string "remarks_2", limit: 1024, comment: "備考2"
    t.string "remarks_3", limit: 1024, comment: "備考3"
    t.integer "non_alert_flag", limit: 3, comment: "保守期限アラート無効"
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "alert_mailaddr", limit: 128
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
