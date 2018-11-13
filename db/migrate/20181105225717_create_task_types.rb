class CreateTaskTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :task_types do |t|
      t.string :TaskType
      t.boolean :isActive
      t.integer :PortID
      t.string :EditLabel

      t.timestamps
    end
  end
end
