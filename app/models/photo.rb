# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  created_at  :string(255)      not null
#  updated_at  :datetime         not null
#  total_views :integer
#  score       :integer
#

class Photo < ActiveRecord::Base
  attr_accessible :url, :created_at
  has_many :comments
  validates :url, presence: true, uniqueness: true
  validates :created_at, presence: true
# self.photo_create(search_object)
end
