# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  date       :datetime
#  round_id   :integer
#  home_team  :integer
#  away_team  :integer
#  stadium_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_games_on_round_id    (round_id)
#  index_games_on_stadium_id  (stadium_id)
#

class Game < ActiveRecord::Base
  belongs_to :round
  belongs_to :stadium
  belongs_to :home_team, :class_name => Team
  belongs_to :away_team, :class_name => Team
  
  has_many :line_ups
  has_many :substitutions
  has_many :plays
  
  validates :stadium_id, :home_team, :away_team, :round_id, presence: true, numericality: true
end
