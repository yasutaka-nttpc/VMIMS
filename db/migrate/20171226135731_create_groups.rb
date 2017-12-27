class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    #create_table :groups, id: false do |t|
    create_table :groups do |t|
      #t.column :group_id, 'INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT'
      t.string :name, :limit => 255
      t.string :alert_mailaddr, :limit => 128
    end
  end
end
