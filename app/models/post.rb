# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  trial_id   :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :content, :trial_id
  belongs_to :trial
  validates :content , :length => {:maximum => 200}
end
