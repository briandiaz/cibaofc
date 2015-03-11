json.array!(@stadiums) do |stadium|
  json.extract! stadium, :id, :name, :founded_date, :length, :width, :capacity, :photo, :country_id, :city_id
  json.url stadium_url(stadium, format: :json)
end
