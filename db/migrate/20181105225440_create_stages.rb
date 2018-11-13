class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :StageName
      t.boolean :isActive
      t.integer :StageOrder
      t.integer :PortID
      t.string :EditLabel

      t.timestamps
    end
  end
end
