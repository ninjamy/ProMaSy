json.extract! task_status, :id, :TaskStatus, :PortID, :created_at, :updated_at
json.url task_status_url(task_status, format: :json)
