# == Schema Information
#
# Table name: people
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  middle_name            :string(255)
#  last_name              :string(255)
#  sur_name               :string(255)
#  sex                    :string(255)
#  identification_number  :string(255)
#  birthdate              :date
#  phone                  :string(255)
#  mobile                 :string(255)
#  additional_phone       :string(255)
#  email                  :string(255)
#  salary                 :decimal(, )
#  additional_information :text
#  photo                  :string(255)
#  city_id                :integer
#  created_at             :datetime
#  updated_at             :datetime
#  country_id             :integer
#
# Indexes
#
#  index_people_on_city_id     (city_id)
#  index_people_on_country_id  (country_id)
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
