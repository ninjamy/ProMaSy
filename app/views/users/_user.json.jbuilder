json.extract! user, :id, :user_name, :user_email, :company_id, :created_at, :updated_at
json.url user_url(user, format: :json)
