json.extract! task, :id, :work_id, :user_id, :task_type_id, :est_hours, :remaining_hours, :actual_hours, :waiting_on_task_id, :task_status_id, :date_started, :created_at, :updated_at
json.url task_url(task, format: :json)
