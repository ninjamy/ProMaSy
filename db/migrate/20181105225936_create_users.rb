class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :UserName
      t.string :UserEmail
      t.integer :CompanyID

      t.timestamps
    end
  end
end
