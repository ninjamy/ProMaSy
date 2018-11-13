class CreateWorkTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :work_types do |t|
      t.string :WorkType
      t.integer :PortID
      t.string :EditLabel

      t.timestamps
    end
  end
end
