# == Schema Information
#
# Table name: line_ups
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  team_id    :integer
#  player_1   :integer
#  player_2   :integer
#  player_3   :integer
#  player_4   :integer
#  player_5   :integer
#  player_6   :integer
#  player_7   :integer
#  player_8   :integer
#  player_9   :integer
#  player_10  :integer
#  player_11  :integer
#  created_at :datetime
#  updated_at :datetime
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
