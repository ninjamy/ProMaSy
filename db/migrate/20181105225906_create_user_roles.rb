class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.integer :UserID
      t.integer :RoleID
 
      t.timestamps
    end
  end
end
