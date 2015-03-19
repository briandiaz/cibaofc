# == Schema Information
#
# Table name: technical_staffs
#
#  id           :integer          not null, primary key
#  person_id    :integer
#  team_id      :integer
#  tech_role_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_technical_staffs_on_person_id     (person_id)
#  index_technical_staffs_on_team_id       (team_id)
#  index_technical_staffs_on_tech_role_id  (tech_role_id)
#

class TechnicalStaff < ActiveRecord::Base
  belongs_to :person
  belongs_to :team
  belongs_to :tech_role
  
  validates :person_id, :tech_role_id, :team_id, presence: true, numericality: true
  
end
