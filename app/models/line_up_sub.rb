# == Schema Information
#
# Table name: line_up_subs
#
#  id          :integer          not null, primary key
#  lineup_id   :integer
#  player_1_id :integer
#  player_2_id :integer
#  player_3_id :integer
#  player_4_id :integer
#  player_5_id :integer
#  player_6_id :integer
#  player_7_id :integer
#  created_at  :datetime
#  updated_at  :datetime
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
  
  
  validates :lineup_id, :player_1_id, :player_2_id, :player_3_id, :player_4_id, :player_5_id, 
            :player_6_id, :player_7_id, presence: true, numericality: true
            
  validates :lineup_id, uniqueness: true
end
