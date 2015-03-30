# == Schema Information
#
# Table name: line_ups
#
#  id           :integer          not null, primary key
#  game_id      :integer
#  team_id      :integer
#  player_1_id  :integer
#  player_2_id  :integer
#  player_3_id  :integer
#  player_4_id  :integer
#  player_5_id  :integer
#  player_6_id  :integer
#  player_7_id  :integer
#  player_8_id  :integer
#  player_9_id  :integer
#  player_10_id :integer
#  player_11_id :integer
#  created_at   :datetime
#  updated_at   :datetime
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
  
  validates :game_id, :team_id, :player_1_id, :player_2_id, :player_3_id, :player_4_id, :player_5_id, 
            :player_6_id, :player_7_id, :player_8_id, :player_9_id, :player_10_id, :player_11_id, 
            presence: true, numericality: true
            
  
end
