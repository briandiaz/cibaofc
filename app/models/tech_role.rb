# == Schema Information
#
# Table name: tech_roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  short_name :string(255)
#  photo      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TechRole < ActiveRecord::Base
end
