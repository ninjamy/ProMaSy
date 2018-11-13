class AddForeignKeysToTables < ActiveRecord::Migration[5.1]
  def change
  	 add_foreign_key :portfolios, :companies
  	 add_foreign_key :completed_verifications, :work
  	 add_foreign_key :completed_verifications, :users, column: :AddBy, primary_key: :id
  	 add_foreign_key :completed_verifications, :users, column: :CompletedBy, primary_key: :id
  	 add_foreign_key :environments, :portfolios
  	 add_foreign_key :stages, :portfolios
  	 add_foreign_key :task_statuses, :portfolios
  	 add_foreign_key :task_types, :portfolios
  	 add_foreign_key :tasks, :works
  	 add_foreign_key :tasks, :users
  	 add_foreign_key :tasks, :task_types
  	 add_foreign_key :tasks, :tasks, column: :WaitingOn_TaskID, primary_key: :id
  	 add_foreign_key :tasks, :task_statuses

  	 add_foreign_key :time_lines, :works
  	 add_foreign_key :time_lines, :stages
  	 add_foreign_key :time_lines, :tasks
  	 add_foreign_key :time_lines, :task_statuses

  	 add_foreign_key :user_accesses, :users
  	 add_foreign_key :user_accesses, :portfolios

  	 add_foreign_key :user_roles, :users
  	 add_foreign_key :user_roles, :roles

  	 add_foreign_key :users, :companies
  	 
  	 add_foreign_key :work_groups, :roles
  	 add_foreign_key :work_groups, :work_types
  	 add_foreign_key :work_groups, :stages
  	 add_foreign_key :work_groups, :task_types
  	 add_foreign_key :work_groups, :roles
  	 add_foreign_key :work_groups, :environments
  	 add_foreign_key :work_groups, :portfolios

  	 add_foreign_key :work_types, :portfolios

	add_foreign_key :works, :portfolios
	add_foreign_key :works, :work_types
	add_foreign_key :works, :works, column: :ParentWorkID, primary_key: :id
	add_foreign_key :works, :users, column: :WorkOwnerID, primary_key: :id
	add_foreign_key :works, :stages
	add_foreign_key :works, :users, column: :RequestByID, primary_key: :id


  end
end