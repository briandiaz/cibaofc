# == Schema Information
#
# Table name: line_ups
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  team_id    :integer
#  player_1   :integer
#  player_2   :integer
#  player_3   :integer
#  player_4   :integer
#  player_5   :integer
#  player_6   :integer
#  player_7   :integer
#  player_8   :integer
#  player_9   :integer
#  player_10  :integer
#  player_11  :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_line_ups_on_game_id  (game_id)
#  index_line_ups_on_team_id  (team_id)
#

class LineUp < ActiveRecord::Base
  belongs_to :game
  belongs_to :team
  belongs_to :player_1, :class_name => Player
  belongs_to :player_2, :class_name => Player
  belongs_to :player_3, :class_name => Player
  belongs_to :player_4, :class_name => Player
  belongs_to :player_5, :class_name => Player
  belongs_to :player_6, :class_name => Player
  belongs_to :player_7, :class_name => Player
  belongs_to :player_8, :class_name => Player
  belongs_to :player_9, :class_name => Player
  belongs_to :player_10, :class_name => Player
  belongs_to :player_11, :class_name => Player
  
  has_one :line_up_sub
  
  validates :game_id, :team_id, :player_1, :player_2, :player_3, :player_4, :player_5, 
            :player_6, :player_7, :player_8, :player_9, :player_10, :player_11, 
            presence: true, numericality: true
            
  validates :game_id, uniqueness: true
  
end
