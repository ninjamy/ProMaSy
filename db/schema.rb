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

ActiveRecord::Schema.define(version: 20181112195915) do

  create_table "Portfolios", force: :cascade do |t|
    t.string "PortName"
    t.boolean "isActive"
    t.integer "CompanyID"
    t.boolean "isDefault"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.boolean "is_default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "completed_verifications", force: :cascade do |t|
    t.integer "WorkID"
    t.string "CriteriaDescription"
    t.boolean "isCompleted"
    t.datetime "DateCompleted"
    t.integer "AddBy"
    t.integer "CompletedBy"
    t.integer "ImportanceLevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "edit_histories", force: :cascade do |t|
    t.string "TableName"
    t.string "OldValue"
    t.string "NewValue"
    t.string "ColumName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string "EnvironmentName"
    t.integer "PortID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level_of_efforts", force: :cascade do |t|
    t.integer "PortID"
    t.integer "LOEMin"
    t.integer "LOEMax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "RoleName"
    t.integer "CompanyID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string "StageName"
    t.boolean "isActive"
    t.integer "StageOrder"
    t.integer "PortID"
    t.string "EditLabel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "TaskStatus"
    t.integer "PortID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_types", force: :cascade do |t|
    t.string "TaskType"
    t.boolean "isActive"
    t.integer "PortID"
    t.string "EditLabel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "WorkID"
    t.integer "UserID"
    t.integer "TaskTypeID"
    t.integer "EstHours"
    t.integer "RemaingHours"
    t.integer "ActualHours"
    t.integer "WaitingOn_TaskID"
    t.integer "TaskStatusID"
    t.datetime "DateStarted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_lines", force: :cascade do |t|
    t.integer "WorkID"
    t.integer "RemaingHours"
    t.integer "StageID"
    t.integer "TaskID"
    t.integer "TaskStatusID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accesses", force: :cascade do |t|
    t.integer "UserID"
    t.integer "PortID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "UserID"
    t.integer "RoleID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "UserName"
    t.string "UserEmail"
    t.integer "CompanyID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_groups", force: :cascade do |t|
    t.integer "WorkTypeID"
    t.integer "StageID"
    t.integer "TaskTypeID"
    t.integer "RoleID"
    t.integer "EnvironmentID"
    t.integer "PortID"
    t.integer "WorkGroupOrder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_types", force: :cascade do |t|
    t.string "WorkType"
    t.integer "PortID"
    t.string "EditLabel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "WorkName"
    t.integer "PortID"
    t.integer "WorkTypeID"
    t.integer "ParentWorkID"
    t.integer "EstLOE"
    t.integer "WorkOwnerID"
    t.string "WorkDescription"
    t.integer "StageID"
    t.integer "RequestByID"
    t.datetime "DateDeleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
