# == Schema Information
#
# Table name: players
#
#  id           :integer          not null, primary key
#  height       :decimal(, )
#  weight       :decimal(, )
#  shirt_number :integer
#  debut_date   :date
#  person_id    :integer
#  team_id      :integer
#  position_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_players_on_person_id    (person_id)
#  index_players_on_position_id  (position_id)
#  index_players_on_team_id      (team_id)
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
