class CreateUserAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accesses do |t|
      t.integer :UserID
      t.integer :PortID

      t.timestamps
    end
  end
end
