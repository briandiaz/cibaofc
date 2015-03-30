# == Schema Information
#
# Table name: line_up_subs
#
#  id          :integer          not null, primary key
#  lineup_id   :integer
#  player_1_id :integer
#  player_2_id :integer
#  player_3_id :integer
#  player_4_id :integer
#  player_5_id :integer
#  player_6_id :integer
#  player_7_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_line_up_subs_on_lineup_id  (lineup_id)
#

require 'test_helper'

class LineUpSubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
