# == Schema Information
#
# Table name: plays
#
#  id           :integer          not null, primary key
#  x_coordinate :decimal(, )
#  y_coordinate :decimal(, )
#  by_id        :integer
#  assist_by_id :integer
#  playtype_id  :integer
#  game_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#  team_id      :integer
#  time         :integer
#
# Indexes
#
#  index_plays_on_game_id      (game_id)
#  index_plays_on_playtype_id  (playtype_id)
#  index_plays_on_team_id      (team_id)
#

require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
