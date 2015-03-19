# == Schema Information
#
# Table name: rounds
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  season_id  :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_rounds_on_season_id  (season_id)
#

require 'test_helper'

class RoundTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
