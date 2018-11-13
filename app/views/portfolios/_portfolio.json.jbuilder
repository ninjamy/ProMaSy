json.extract! portfolio, :id, :PortName, :isActive, :CompanyID, :isDefault, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
