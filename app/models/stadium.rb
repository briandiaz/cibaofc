# == Schema Information
#
# Table name: stadiums
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  founded_date :date
#  length       :decimal(, )
#  width        :decimal(, )
#  capacity     :integer
#  photo        :string(255)
#  country_id   :integer
#  city_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_stadiums_on_city_id     (city_id)
#  index_stadiums_on_country_id  (country_id)
#

class Stadium < ActiveRecord::Base
  belongs_to :country
  belongs_to :city
  
  
  validates :name, presence: true
  validates :city_id, presence: true, numericality: true
  validates :country_id, presence: true, numericality: true
  
end
