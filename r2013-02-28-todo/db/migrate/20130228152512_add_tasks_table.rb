class AddTasksTable < ActiveRecord::Migration
 
  def change
  create_table :tasks do |t|
    t.string :title
    t.string :description
    t.date :due_date
    t.string :complete
    t.integer :user_id
    t.integer :priority_id
    t.timestamps
    end
  end
end
