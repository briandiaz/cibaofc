# == Schema Information
#
# Table name: line_up_subs
#
#  id         :integer          not null, primary key
#  lineup_id  :integer
#  player_1   :integer
#  player_2   :integer
#  player_3   :integer
#  player_4   :integer
#  player_5   :integer
#  player_6   :integer
#  player_7   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_line_up_subs_on_lineup_id  (lineup_id)
#

class LineUpSub < ActiveRecord::Base
  belongs_to :lineup
  belongs_to :player_1, :class_name => Player
  belongs_to :player_2, :class_name => Player
  belongs_to :player_3, :class_name => Player
  belongs_to :player_4, :class_name => Player
  belongs_to :player_5, :class_name => Player
  belongs_to :player_6, :class_name => Player
  belongs_to :player_7, :class_name => Player
  
  
  validates :lineup_id, :player_1, :player_2, :player_3, :player_4, :player_5, 
            :player_6, :player_7, presence: true, numericality: true
            
  validates :lineup_id, uniqueness: true
end
