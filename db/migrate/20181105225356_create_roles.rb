class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :RoleName
      t.integer :CompanyID

      t.timestamps
    end
  end
end
