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

class Round < ActiveRecord::Base
  belongs_to :season
  
  has_many :games
  
  validates :name, :season_id, presence: true
  
  validates :season_id, numericality: true
  
end
