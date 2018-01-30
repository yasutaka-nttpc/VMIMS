class CreateInformation < ActiveRecord::Migration[5.1]
  UPDATE_TIMESTAMP = 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'
  #GROUP = "INT(11) COMMENT 'グループID' FOREIGN KEY(group) REFERENCES groups(id)"
  #SERVICE = "INT(11) COMMENT 'サービスID' FOREIGN KEY(service) REFERENCES services(id)"

  def change
    create_table :information do |t|
      # idカラムはデフォルトで作られる
      # t.integer :id, :limit => 11, :null => false, comment: 'ID'
      t.datetime :created_at, comment: '登録日時'
      t.column :updated_at, UPDATE_TIMESTAMP, null: true, comment: '更新日時'
      #t.column :service, SERVICE
      t.integer :service, :limit => 4, comment: 'サービスID'
      #t.column :group, GROUP
      t.integer :group, :limit => 4, comment: 'グループID'
      t.integer :category, :limit => 4, comment: '機器種別ID'
      t.integer :environment, :limit => 4, comment: '環境ID'
      t.string :name, :limit => 255, :null => false, comment: '機器名'
      t.string :serial, :limit => 255, comment: 'シリアルナンバー'
      t.string :server_name, :limit => 255, :null => false, comment: 'サーバー名'
      t.string :support_contact, :limit => 255, comment: '保守ベンダー'
      t.date :support_contact_period, comment: '保守契約期間'
      t.string :support_id, :limit => 255, default: :serial, comment: '保守番号'
      t.string :hard_support_conditions, :limit => 255, comment: 'ハード保守条件'
      t.string :hard_contact_tel, :limit => 255, comment: 'ハード保守電話番号'
      t.string :hard_contact_mail, :limit => 255, comment: 'ハード保守メールアドレス'
      t.string :hard_contact_other, :limit => 1024, comment: 'ハード保守その他'
      t.string :soft_support_conditions, :limit => 255, comment: 'ソフト保守条件'
      t.string :soft_contact_tel, :limit => 255, comment: 'ソフト保守電話番号'
      t.string :soft_contact_mail, :limit => 255, comment: 'ソフト保守メールアドレス'
      t.string :soft_contact_other, :limit => 1024, comment: 'ソフト保守その他'
      t.string :os_version, :limit => 255, comment: 'OSバージョン'
      t.date :eos_hard, comment: 'ハード保守期限'
      t.date :eos_soft, comment: 'ソフト保守期限'
      t.string :sales_contact, :limit => 255, comment: '営業担当者'
      t.string :sales_contact_tel, :limit => 255, comment: '営業電話番号'
      t.string :sales_contact_mail, :limit => 255, comment: '営業メールアドレス'
      t.string :remarks_1, :limit => 1024, comment: '備考1'
      t.string :remarks_2, :limit => 1024, comment: '備考2'
      t.string :remarks_3, :limit => 1024, comment: '備考3'
      t.integer :non_alert_flag, :limit => 3, comment: '保守期限アラート無効'
    end
    #add_foreign_key :information, :groups, column: :id
    #add_foreign_key :information, :services, column: :id
    #add_foreign_key :information, :categories, column: :id
    #add_foreign_key :information, :environments, column: :id
  end
end
