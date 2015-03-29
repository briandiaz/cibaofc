# == Schema Information
#
# Table name: players
#
#  id           :integer          not null, primary key
#  height       :decimal(, )
#  weight       :decimal(, )
#  shirt_number :integer
#  debut_date   :date
#  person_id    :integer
#  team_id      :integer
#  position_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_players_on_person_id    (person_id)
#  index_players_on_position_id  (position_id)
#  index_players_on_team_id      (team_id)
#

class Player < ActiveRecord::Base
  belongs_to :person
  belongs_to :team
  belongs_to :position

  validates :person_id, :team_id, :shirt_number, presence: true, numericality: true
  
  accepts_nested_attributes_for :person
  after_initialize do
    self.person ||= self.build_person()
  end
  
  def name
    person.name
  end
  
  def full_name
    person.name
  end
  
  def info
    "#{person.first_name} #{person.last_name} ##{shirt_number}"
  end
  
  def height_to_feet_inches
    if height
      inches = (height / 2.54)
      feet = (inches / 12).to_i
      inches = (inches % 12).ceil
      feet, inches = feet + 1, 0 if (inches == 12) # In case inches are 12, feet must be increased by one and feets must be restarted.
      "#{feet}' #{inches}\""
    else
      nil
    end
  end
  
  def weight_to_kilos
    if weight
      kilos = (weight/2.20462).truncate
      "#{kilos} kg"
    else
      nil
    end
  end
  
  def team_name
    team.name
  end
  
  def team_short_name
    team.short_name
  end
  
  def position_name
    position.name if position
  end
  
  def position_short_name
    position.short_name  if position
  end
  
  def debut_date_format
    (debut_date) ? debut_date.strftime("%d %m, %Y") : ""
  end

end

