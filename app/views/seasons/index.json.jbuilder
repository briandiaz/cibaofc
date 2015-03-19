json.array!(@seasons) do |season|
  json.extract! season, :id, :name, :year, :country_id, :city_id
  json.url season_url(season, format: :json)
end
