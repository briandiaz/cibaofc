# == Schema Information
#
# Table name: play_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  value      :integer
#  commentary :string(255)
#

require 'test_helper'

class PlayTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
