# == Schema Information
#
# Table name: line_ups
#
#  id           :integer          not null, primary key
#  game_id      :integer
#  team_id      :integer
#  player_1_id  :integer
#  player_2_id  :integer
#  player_3_id  :integer
#  player_4_id  :integer
#  player_5_id  :integer
#  player_6_id  :integer
#  player_7_id  :integer
#  player_8_id  :integer
#  player_9_id  :integer
#  player_10_id :integer
#  player_11_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_line_ups_on_game_id  (game_id)
#  index_line_ups_on_team_id  (team_id)
#

require 'test_helper'

class LineUpTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
