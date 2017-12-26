class CreateEnvironments < ActiveRecord::Migration[5.1]
  def change
    create_table :environments do |t|
      t.string :name, :limit => 255
    end
    #add_foreign_key :information, :environments, column: :id
  end
end
