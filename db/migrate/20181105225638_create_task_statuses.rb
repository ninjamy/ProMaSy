class CreateTaskStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :task_statuses do |t|
      t.string :TaskStatus
      t.integer :PortID

      t.timestamps
    end
  end
end
