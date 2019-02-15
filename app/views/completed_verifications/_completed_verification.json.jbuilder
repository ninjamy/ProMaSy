json.extract! completed_verification, :id, :work_id, :criteria_description, :is_completed, :date_completed, :added_by, :completed_bBy, :importance_level, :created_at, :updated_at
json.url completed_verification_url(completed_verification, format: :json)
