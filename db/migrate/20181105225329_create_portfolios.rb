class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :PortName
      t.boolean :isActive
      t.boolean :CompanyID
      t.boolean :isDefault

      t.timestamps
    end
  end
end
