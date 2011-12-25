class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.references :project
      t.text :story
      t.integer :velocity
      t.integer :position
      t.string :backlog

      t.timestamps
    end
  end
end
