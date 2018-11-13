json.extract! user, :id, :UserName, :UserEmail, :CompanyID, :created_at, :updated_at
json.url user_url(user, format: :json)
