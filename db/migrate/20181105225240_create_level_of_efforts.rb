class CreateLevelOfEfforts < ActiveRecord::Migration[5.1]
  def change
    create_table :level_of_efforts do |t|
      t.integer :PortID
      t.integer :LOEMin
      t.integer :LOEMax

      t.timestamps
    end
  end
end
