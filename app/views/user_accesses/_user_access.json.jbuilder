json.extract! user_access, :id, :user_id, :portfolio_id, :created_at, :updated_at
json.url user_access_url(user_access, format: :json)
