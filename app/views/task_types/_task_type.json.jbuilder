json.extract! task_type, :id, :TaskType, :isActive, :PortID, :EditLabel, :created_at, :updated_at
json.url task_type_url(task_type, format: :json)
