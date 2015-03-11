json.array!(@positions) do |position|
  json.extract! position, :id, :name, :short_name, :photo
  json.url position_url(position, format: :json)
end
