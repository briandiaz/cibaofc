# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  short_name   :string(255)
#  founded_date :date
#  value        :decimal(, )
#  stadium_id   :integer
#  country_id   :integer
#  city_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_teams_on_city_id     (city_id)
#  index_teams_on_country_id  (country_id)
#  index_teams_on_stadium_id  (stadium_id)
#

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
