class CreateTimeLines < ActiveRecord::Migration[5.1]
  def change
    create_table :time_lines do |t|
      t.integer :WorkID
      t.integer :RemaingHours
      t.integer :StageID
      t.integer :TaskID
      t.integer :TaskStatusID

      t.timestamps
    end
  end
end
