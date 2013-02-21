# == Schema Information
#
# Table name: trials
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trial < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :posts
end
