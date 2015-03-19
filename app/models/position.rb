# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  short_name :string(255)
#  photo      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Position < ActiveRecord::Base
  has_many :player
  
  validates :name, :short_name, presence: true
  
  def self.all_collect
    Position.all.collect {|p| [ p.name + " - " + p.short_name, p.id ] }
  end
  
end
