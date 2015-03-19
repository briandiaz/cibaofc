# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  date       :datetime
#  round_id   :integer
#  home_team  :integer
#  away_team  :integer
#  stadium_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_games_on_round_id    (round_id)
#  index_games_on_stadium_id  (stadium_id)
#

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
