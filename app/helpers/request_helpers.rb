# A helper method to extract media urls from twitter search results

module TwitterHelpers

  def media_url_finder (response_object)
    response_object.attrs[:statuses].each do |tweet_object|
    url = tweet_object[:entities][:media][0][:media_url_https]
  end

end