json.extract! project, :id, :user_id, :company, :stage, :name_first, :name_last, :email, :phone, :address_street_1, :address_street_2, :address_city, :address_state, :address_zipcode, :company_kind, :mission_statement, :who_you_are, :who_you_help, :what_you_do, :current_services, :update_frequency, :domain_registered, :created_at, :updated_at
json.url project_url(project, format: :json)
