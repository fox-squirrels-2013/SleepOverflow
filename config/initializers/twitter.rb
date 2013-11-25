unless Rails.env.production?
  # put this in a named
  env_config = YAML.load_file('./config/twitter.yaml')

  env_config.each do |key, value|
    ENV[key] = value
  end
end

CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_KEY']
  config.consumer_secret     = ENV['TWITTER_SECRET']
end

# Initialize the rails application
