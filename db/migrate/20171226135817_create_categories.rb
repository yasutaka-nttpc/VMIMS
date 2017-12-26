class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, :limit => 255
    end
    #add_foreign_key :information, :categories, column: :id
  end
end
