class Comment < ActiveRecord::Base
  attr_accessible :content, :username
  belongs_to :photo
  validates :content, :username, presence: true
end
