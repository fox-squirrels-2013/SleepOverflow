require 'twitter'

class Photo < ActiveRecord::Base
  attr_accessible :url, :twitter_created

# We learnt that the twitpic_gem sucks and so all we need is below. Thanks Rao Rao

search_object = $client.search("#dbcsleeps")
# not defined? Client = constant? generate photo stream in controller or worker

def self.photo_create(response)
  response.attrs[:statuses].each do |tweet_object|
    url = tweet_object[:entities][:media][0][:media_url_https]
    ##twitter_created remains nil for now...
    Photo.create(url: url, twitter_created: nil)
  end
end

# self.photo_create(search_object)
## the call belongs in the controller
end