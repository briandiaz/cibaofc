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

  validates :person_id, :position_id, :team_id, :shirt_number, presence: true, numericality: true
  
  accepts_nested_attributes_for :person
  after_initialize do
    self.person ||= self.build_person()
  end
  
  def self.height_in_feet()
    feet, inches = (height/30.48).to_s.split(".")
    inches = inches[0]
    "#{feet}' #{inches}\""
  end
  
  #def self.profile_name
  #  "#{person.first_name} #{person.last_name} ##{shirt_number} - #{position.short_name}"
  #end


end

