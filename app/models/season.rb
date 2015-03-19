# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :integer
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_seasons_on_country_id  (country_id)
#

class Season < ActiveRecord::Base
  belongs_to :country
  belongs_to :city
  
  has_many :rounds
  
  validates :country_id, :name, :year, presence: true
  validates :country_id, :year, numericality: true
  
end
