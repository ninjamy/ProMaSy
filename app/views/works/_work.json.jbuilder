json.extract! work, :id, :work_name, :portfolio_id, :work_type_id, :parent_work_id, :est_loe, :work_owner_id, :work_description, :stage_id, :requested_by_id, :DateDeleted, :created_at, :updated_at
json.url work_url(work, format: :json)
