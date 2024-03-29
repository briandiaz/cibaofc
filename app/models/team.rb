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
#  photo        :string(255)
#
# Indexes
#
#  index_teams_on_city_id     (city_id)
#  index_teams_on_country_id  (country_id)
#  index_teams_on_stadium_id  (stadium_id)
#

class Team < ActiveRecord::Base
  belongs_to :stadium
  belongs_to :country
  belongs_to :city
  
  has_many :plays
  has_many :home_teams, :class_name => Game, :foreign_key => :home_team_id 
  has_many :away_teams, :class_name => Game, :foreign_key => :away_team_id
  
  
  validates :name, presence: true
  validates :stadium_id, :city_id, :country_id, presence: true, numericality: true
  
  
  def self.all_collect
    Team.all.collect {|p| [ p.name + " - " + p.city.name, p.id ] }
  end

  
end
