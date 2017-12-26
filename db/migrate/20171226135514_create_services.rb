class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :service_id, :limit => 4
      t.string :name, :limit => 255
      t.string :alert_mailaddr, :limit => 128
    end
    add_foreign_key :information, :services, column: :service_id
  end
end
