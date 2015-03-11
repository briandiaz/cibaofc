json.array!(@teams) do |team|
  json.extract! team, :id, :name, :short_name, :founded_date, :value, :stadium_id, :country_id, :city_id
  json.url team_url(team, format: :json)
end
