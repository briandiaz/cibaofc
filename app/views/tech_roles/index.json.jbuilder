json.array!(@tech_roles) do |tech_role|
  json.extract! tech_role, :id, :name, :short_name, :photo
  json.url tech_role_url(tech_role, format: :json)
end
