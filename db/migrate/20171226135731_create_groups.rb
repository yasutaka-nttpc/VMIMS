class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name, :limit => 255
      t.string :alert_mailaddr, :limit => 128
    end
  end
end
