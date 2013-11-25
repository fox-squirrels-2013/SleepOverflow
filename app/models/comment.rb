# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photos_id  :integer
#  content    :string(255)
#  username   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :photos_id, :content, :username
  belongs_to :photo
  validates :content, presence: true
  validates :username, presence: true
end
