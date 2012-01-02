class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user_story
      t.string :task
      t.integer :velocity
      t.string :status

      t.timestamps
    end
  end
end
