json.extract! project, :id, :title, :issue_area, :location_city, :location_state, :status, :homepage, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
