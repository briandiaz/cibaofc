json.array!(@play_types) do |play_type|
  json.extract! play_type, :id, :name
  json.url play_type_url(play_type, format: :json)
end
