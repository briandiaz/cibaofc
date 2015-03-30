# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  date         :datetime
#  round_id     :integer
#  home_team_id :integer
#  away_team_id :integer
#  stadium_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
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
  
  validates :stadium_id, :round_id, presence: true, numericality: true
  
  def goals
    goal = PlayType.find_by_value(1)
    Play.where(playtype_id: goal.id, game_id: id)
  end
  
  def is_home?(team_id)
    (home_team_id == team_id)
  end
  
  def is_away?(team_id)
    !is_home?(team_id)
  end
  
  def latest_plays
    Play.where(game_id: id).order("time DESC")
  end
  
  def home_players
    LineUp.where(team_id: home_team_id, game_id: id).first
  end
  
  def away_players
    LineUp.where(team_id: away_team_id, game_id: id).first
  end
  
  def home_subs(lineup_id)
    LineUpSub.where(lineup_id: lineup_id).first
  end
  
  def away_subs(lineup_id)
    LineUpSub.where(lineup_id: lineup_id).first
  end
  
  def home_goals
    goal = PlayType.find_by_value(1)
    Play.where(playtype_id: goal.id, game_id: id, team_id: home_team)
  end
  
  def away_goals
    goal = PlayType.find_by_value(1)
    Play.where(playtype_id: goal.id, game_id: id, team_id: away_team)
  end
  
  def substitutions
    Substitution.where(game_id: id)
  end
  
  def stadium_info
    "#{stadium.name}, #{stadium.city.name}"
  end
  
  def date_format
    date.strftime("%-d de %B de %Y")
  end
  
  def time_format
    date.strftime("%I:%M %p")
  end
  
end
