# == Schema Information
#
# Table name: plays
#
#  id           :integer          not null, primary key
#  time         :time
#  x_coordinate :decimal(, )
#  y_coordinate :decimal(, )
#  by           :integer
#  assist_by    :integer
#  playtype_id  :integer
#  game_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_plays_on_game_id      (game_id)
#  index_plays_on_playtype_id  (playtype_id)
#

require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
