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
    
  validates :name, presence: true
  validates :short_name, presence: true
  
end
