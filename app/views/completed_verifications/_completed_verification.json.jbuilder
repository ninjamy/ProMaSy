json.extract! completed_verification, :id, :WorkID, :CriteriaDescription, :isCompleted, :DateCompleted, :AddBy, :CompletedBy, :ImportanceLevel, :created_at, :updated_at
json.url completed_verification_url(completed_verification, format: :json)
