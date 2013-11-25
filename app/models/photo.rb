class Photo < ActiveRecord::Base
  attr_accessible :url, :created_at
  has_many :comments
  validates :url, presence: true, uniqueness: true
  validates :created_at, presence: true


  def self.create_from_tweets tweets
    tweets.each do |tweet_object|
      url = tweet_object[:entities][:media][0][:media_url_https]
      Photo.create(url: url, created_at: tweet_object[:created_at])
    end
  end
end
