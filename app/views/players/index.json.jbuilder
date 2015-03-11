json.array!(@players) do |player|
  json.extract! player, :id, :name, :height, :weight, :shirt_number, :debut_date, :person_id, :team_id, :position_id
  json.url player_url(player, format: :json)
end
