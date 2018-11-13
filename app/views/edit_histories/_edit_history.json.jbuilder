json.extract! edit_history, :id, :TableName, :OldValue, :NewValue, :ColumName, :created_at, :updated_at
json.url edit_history_url(edit_history, format: :json)
