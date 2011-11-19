class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, :limit => 100, :null => false
      t.text :description
      t.integer :velocity, :limit => 4

      t.timestamps
    end
  end
end
