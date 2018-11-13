class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :WorkName
      t.integer :PortID
      t.integer :WorkTypeID
      t.integer :ParentWorkID
      t.integer :EstLOE
      t.integer :WorkOwnerID
      t.string :WorkDescription
      t.integer :StageID
      t.integer :RequestByID
      t.datetime :DateDeleted

      t.timestamps
    end
  end
end
