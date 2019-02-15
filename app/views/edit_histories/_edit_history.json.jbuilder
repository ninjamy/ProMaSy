json.extract! edit_history, :id, :table_name, :old_value, :new_value, :colum_name, :created_at, :updated_at
json.url edit_history_url(edit_history, format: :json)
