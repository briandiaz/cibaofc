json.array!(@substitutions) do |substitution|
  json.extract! substitution, :id, :time, :player_in, :player_out, :game_id, :team_id
  json.url substitution_url(substitution, format: :json)
end
