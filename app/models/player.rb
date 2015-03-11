class Player < ActiveRecord::Base
  belongs_to :person
  belongs_to :team
  belongs_to :position

  validates :person_id, presence: true, numericality: true
  validates :position_id, presence: true, numericality: true
  validates :team_id, presence: true, numericality: true
  validates :shirt_number, presence: true, numericality: true
  
  accepts_nested_attributes_for :person
  after_initialize do
    self.person ||= self.build_person()
  end
  
  #def self.profile_name
  #  "#{person.first_name} #{person.last_name} ##{shirt_number} - #{position.short_name}"
  #end


end

