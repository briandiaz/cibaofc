# == Schema Information
#
# Table name: line_up_subs
#
#  id         :integer          not null, primary key
#  lineup_id  :integer
#  player_1   :integer
#  player_2   :integer
#  player_3   :integer
#  player_4   :integer
#  player_5   :integer
#  player_6   :integer
#  player_7   :integer
#  created_at :datetime
#  updated_at :datetime
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
