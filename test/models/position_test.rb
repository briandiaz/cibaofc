# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  short_name :string(255)
#  photo      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
