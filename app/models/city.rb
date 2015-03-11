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

class City < ActiveRecord::Base
    belongs_to :country
  
    validates :name, presence: true
    validates :country_id, presence: true, numericality: true
end
