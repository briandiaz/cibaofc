# == Schema Information
#
# Table name: substitutions
#
#  id         :integer          not null, primary key
#  time       :time
#  player_in  :integer
#  player_out :integer
#  game_id    :integer
#  team_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_substitutions_on_game_id  (game_id)
#  index_substitutions_on_team_id  (team_id)
#

class Substitution < ActiveRecord::Base
  belongs_to :game
  belongs_to :team
  belongs_to :player_in, :class_name => Player
  belongs_to :player_out, :class_name => Player
  
  validates :game_id, :team_id, :player_in, :player_out, :time, presence: true
  validates :game_id, :team_id, :player_in, :player_out, numericality: true
  
end
