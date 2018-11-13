class CreateCompletedVerifications < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_verifications do |t|
      t.integer :WorkID
      t.string :CriteriaDescription
      t.boolean :isCompleted
      t.datetime :DateCompleted
      t.integer :AddBy
      t.integer :CompletedBy
      t.integer :ImportanceLevel

      t.timestamps
    end
  end
end
