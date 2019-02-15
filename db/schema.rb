# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181115220456) do

 

  create_table "completed_verifications", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.string "criteria_description"
    t.boolean "is_completed", default: false, null: false
    t.datetime "date_completed", null: false
    t.bigint "added_by", null: false
    t.bigint "completed_by"
    t.integer "importance_level", default: 1, null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end
  

  create_table "edit_histories", force: :cascade do |t|
    t.string "table_name", null: false
    t.string "old_value"
    t.string "new_value"
    t.string "column_name", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "environments", force: :cascade do |t|
    t.string "environment_name", null: false
    t.bigint "portfolio_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["portfolio_id", "environment_name"], name: "IDX_U_Environments_EnvironmentName_PortID"
  end

  create_table "level_of_efforts", force: :cascade do |t|
    t.bigint "portfolio_id", null: false
    t.integer "loe_min", default: 1, null: false
    t.integer "loe_max", default: 10, null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end


  create_table "roles", force: :cascade do |t|
    t.string "role_name", null: false
    t.bigint "company_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["role_name", "company_id"], name: "IDX_U_Roles_RoleName_CompanyID", unique: true
  end

  create_table "stages", force: :cascade do |t|
    t.string "stage_name", null: false
    t.boolean "is_active", default: true, null: false
    t.integer "stage_order", null: false
    t.bigint "portfolio_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["portfolio_id", "stage_name"], name: "IDX_U_Stages_StageName_PortID", unique: true
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "task_status", null: false
    t.bigint "portfolio_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["portfolio_id", "task_status"], name: "IDX_U_TaskStatus_PortID"
  end

  create_table "task_types", force: :cascade do |t|
    t.string "task_type", null: false
    t.boolean "is_active", null: false
    t.bigint "portfolio_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["portfolio_id", "task_type"], name: "IDX_U_TaskName_PortID"
  end


  create_table "tasks", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "user_id", null: false
    t.bigint "task_type_id", null: false
    t.decimal "est_hours", precision: 10, scale: 2
    t.decimal "remaining_hours", precision: 10, scale: 2
    t.decimal "actual_hours", precision: 10, scale: 2
    t.bigint "waiting_on_task_id"
    t.bigint "task_status_id", null: false
    t.datetime "date_started"
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "time_lines", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.decimal "remaining_hours", precision: 10, scale: 2
    t.bigint "stage_id"
    t.bigint "task_id"
    t.bigint "task_status_id"
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "user_accesses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "portfolio_id", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name", limit:100, null: false
    t.string "user_email", limit:500, null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["company_id", "user_email"], name: "IDX_U_Users_UserEmail_Company", unique: true    
  end



  create_table "work_types", force: :cascade do |t|
    t.string "work_type", limit: 100, null: false
    t.bigint "portfolio_id", null: false
    t.string "edit_label", limit: 100
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "works", force: :cascade do |t|
    t.string "work_name", limit: 100, null: false
    t.bigint "portfolio_id", null: false
    t.bigint "work_type_id", null: false
    t.bigint "parent_work_id"
    t.integer "est_loe"
    t.bigint "work_owner_id"
    t.string "work_description"
    t.bigint "stage_id", null: false, default: 1
    t.bigint "requested_by_id", null: false
    t.datetime "date_deleted"
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end

  create_table "work_groups", force: :cascade do |t|
    t.bigint "work_type_id", null: false
    t.bigint "stage_id", null: false
    t.bigint "task_type_id"
    t.bigint "role_id"
    t.bigint "environment_id"
    t.bigint "portfolio_id", null: false
    t.integer "work_group_order", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["work_type_id", "stage_id", "task_type_id", "role_id", "environment_id", "portfolio_id"], name: "IDX_U_WorkGroups_ids", unique: true
  end
  
  create_table "portfolios", force: :cascade do |t|
    t.string "port_name",limit: 100, null: false
    t.boolean "is_active", null: false
    t.bigint "company_id", null: false
    t.boolean "is_default", null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.index ["company_id", "port_name"], name: "IDX_U_PortName_Company", unique: true
  end



 create_table "companies", force: :cascade do |t|
    t.string "company_name", limit: 100, null: false
    t.boolean "is_default", default: false, null: false
    t.datetime "created_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime "updated_at", null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end


  add_foreign_key "completed_verifications", "users", column: "added_by"
  add_foreign_key "completed_verifications", "users", column: "completed_by"
  add_foreign_key "completed_verifications", "works"
  add_foreign_key "environments", "portfolios"
  add_foreign_key "portfolios", "companies"
  add_foreign_key "stages", "portfolios"
  add_foreign_key "task_statuses", "portfolios"
  add_foreign_key "task_types", "portfolios"
  add_foreign_key "tasks", "task_statuses"
  add_foreign_key "tasks", "task_types"
  add_foreign_key "tasks", "tasks", column: "waiting_on_task_id"
  add_foreign_key "tasks", "users"
  add_foreign_key "tasks", "works"
  add_foreign_key "time_lines", "stages"
  add_foreign_key "time_lines", "task_statuses"
  add_foreign_key "time_lines", "tasks"
  add_foreign_key "time_lines", "works"
  add_foreign_key "user_accesses", "portfolios"
  add_foreign_key "user_accesses", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "users", "companies"
  add_foreign_key "work_groups", "environments"
  add_foreign_key "work_groups", "portfolios"
  add_foreign_key "work_groups", "roles"
  add_foreign_key "work_groups", "stages"
  add_foreign_key "work_groups", "task_types"
  add_foreign_key "work_groups", "work_types"
  add_foreign_key "work_types", "portfolios"
  add_foreign_key "works", "portfolios"
  add_foreign_key "works", "stages"
  add_foreign_key "works", "users", column: "requested_by_id"
  add_foreign_key "works", "users", column: "work_owner_id"
  add_foreign_key "works", "work_types"
  add_foreign_key "works", "works", column: "parent_work_id"
end
