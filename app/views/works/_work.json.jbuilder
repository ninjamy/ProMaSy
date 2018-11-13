json.extract! work, :id, :WorkName, :PortID, :WorkTypeID, :ParentWorkID, :EstLOE, :WorkOwnerID, :WorkDescription, :StageID, :RequestByID, :DateDeleted, :created_at, :updated_at
json.url work_url(work, format: :json)
