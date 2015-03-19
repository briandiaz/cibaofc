json.array!(@plays) do |play|
  json.extract! play, :id, :time, :x_coordinate, :y_coordinate, :by, :assist_by, :playtype_id, :game_id
  json.url play_url(play, format: :json)
end
