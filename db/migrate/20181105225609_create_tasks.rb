class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :WorkID
      t.integer :UserID
      t.integer :TaskTypeID
      t.integer :EstHours
      t.integer :RemaingHours
      t.integer :ActualHours
      t.integer :WaitingOn_TaskID
      t.integer :TaskStatusID
      t.datetime :DateStarted

      t.timestamps
    end
  end
end
