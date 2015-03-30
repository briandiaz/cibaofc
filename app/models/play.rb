# == Schema Information
#
# Table name: plays
#
#  id           :integer          not null, primary key
#  x_coordinate :decimal(, )
#  y_coordinate :decimal(, )
#  by_id        :integer
#  assist_by_id :integer
#  playtype_id  :integer
#  game_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#  team_id      :integer
#  time         :integer
#
# Indexes
#
#  index_plays_on_game_id      (game_id)
#  index_plays_on_playtype_id  (playtype_id)
#  index_plays_on_team_id      (team_id)
#

class Play < ActiveRecord::Base
  belongs_to :playtype
  belongs_to :game
  belongs_to :by, :class_name => Player
  belongs_to :assist_by, :class_name => Player
  belongs_to :team
  
  validates :team_id, :time, :playtype_id, :game_id, :by_id, presence: true, numericality: true
  
  def info
    playtype = PlayType.find(playtype_id)
    if assist_by
      "#{playtype.name} #{playtype.commentary} #{by.name} para el equipo #{team.name} luego de una asistencia por #{assist_by.name}"
    else
      "#{playtype.name} #{playtype.commentary} #{by.name} para el equipo #{team.name}"
    end
  end
  
  def to_s
    playtype = PlayType.find(playtype_id)
    if assist_by
      "#{playtype.name} #{playtype.commentary} #{by.name} asistido por #{assist_by.name}"
    else
      "#{playtype.name} #{playtype.commentary} #{by.name}"
    end
  end
end
