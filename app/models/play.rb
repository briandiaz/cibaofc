# == Schema Information
#
# Table name: plays
#
#  id           :integer          not null, primary key
#  time         :time
#  x_coordinate :decimal(, )
#  y_coordinate :decimal(, )
#  by           :integer
#  assist_by    :integer
#  playtype_id  :integer
#  game_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_plays_on_game_id      (game_id)
#  index_plays_on_playtype_id  (playtype_id)
#

class Play < ActiveRecord::Base
  belongs_to :playtype
  belongs_to :game
  belongs_to :by, :class_name => Player
  belongs_to :assist_by, :class_name => Player
  
  validates :playtype_id, :game_id, :by, :assist_by, presence: true, numericality: true
  
  validates :time, presence: true
  
end
