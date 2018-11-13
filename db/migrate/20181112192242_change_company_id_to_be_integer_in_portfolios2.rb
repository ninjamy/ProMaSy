class ChangeCompanyIdToBeIntegerInPortfolios2 < ActiveRecord::Migration[5.1]
  def up
        change_column :Portfolios, :CompanyID, :integer
    end

    def down
        change_column :Portfolios, :CompanyID, :boolean
    end
end
