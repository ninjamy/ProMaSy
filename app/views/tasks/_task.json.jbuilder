json.extract! task, :id, :WorkID, :UserID, :TaskTypeID, :EstHours, :RemaingHours, :ActualHours, :WaitingOn_TaskID, :TaskStatusID, :DateStarted, :created_at, :updated_at
json.url task_url(task, format: :json)
