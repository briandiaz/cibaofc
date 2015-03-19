json.array!(@games) do |game|
  json.extract! game, :id, :date, :round_id, :home_team, :visitor_team, :stadium_id
  json.url game_url(game, format: :json)
end
