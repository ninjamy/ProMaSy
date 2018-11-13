class CreateWorkGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :work_groups do |t|
      t.integer :WorkTypeID
      t.integer :StageID
      t.integer :TaskTypeID
      t.integer :RoleID
      t.integer :EnvironmentID
      t.integer :PortID
      t.integer :WorkGroupOrder

      t.timestamps
    end
  end
end
