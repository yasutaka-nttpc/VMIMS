class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :group_id, :limit => 4
      t.string :name, :limit => 255
      t.string :alert_mailaddr, :limit => 128
    end
    add_foreign_key :information, :groups, column: :group_id
  end
end
