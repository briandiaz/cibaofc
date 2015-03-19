# == Schema Information
#
# Table name: substitutions
#
#  id         :integer          not null, primary key
#  time       :time
#  player_in  :integer
#  player_out :integer
#  game_id    :integer
#  team_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_substitutions_on_game_id  (game_id)
#  index_substitutions_on_team_id  (team_id)
#

require 'test_helper'

class SubstitutionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
