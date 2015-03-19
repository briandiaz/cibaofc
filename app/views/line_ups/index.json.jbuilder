json.array!(@line_ups) do |line_up|
  json.extract! line_up, :id, :game_id, :team_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11
  json.url line_up_url(line_up, format: :json)
end
