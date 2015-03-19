json.array!(@line_up_subs) do |line_up_sub|
  json.extract! line_up_sub, :id, :lineup_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7
  json.url line_up_sub_url(line_up_sub, format: :json)
end
