json.array!(@technical_staffs) do |technical_staff|
  json.extract! technical_staff, :id, :person_id, :team_id, :team_id, :tech_role_id
  json.url technical_staff_url(technical_staff, format: :json)
end
