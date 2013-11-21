class Photo < ActiveRecord::Base
  attr_accessible :url, :created_at

  validates :url, presence: true, uniqueness: true
  validates :created_at, presence: true
end