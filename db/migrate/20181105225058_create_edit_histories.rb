class CreateEditHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :edit_histories do |t|
      t.string :TableName
      t.string :OldValue
      t.string :NewValue
      t.string :ColumName

      t.timestamps
    end
  end
end
