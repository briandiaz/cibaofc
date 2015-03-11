# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  iso        :string(255)
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_cities_on_country_id  (country_id)
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
