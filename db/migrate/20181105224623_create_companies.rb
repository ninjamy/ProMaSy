class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.boolean :is_default

      t.timestamps
    end
  end
end
