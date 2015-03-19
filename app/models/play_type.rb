# == Schema Information
#
# Table name: play_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  value      :integer
#  commentary :string(255)
#

class PlayType < ActiveRecord::Base
    has_many :plays
    
    validates :name, :value, :commentary, presence: true
    validates :value, numericality: true
    
end
