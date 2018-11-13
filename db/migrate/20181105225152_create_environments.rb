class CreateEnvironments < ActiveRecord::Migration[5.1]
  def change
    create_table :environments do |t|
      t.string :EnvironmentName
      t.integer :PortID

      t.timestamps
    end
  end
end
