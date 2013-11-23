class PhotosController < ApplicationController
  def index

    search_object = CLIENT.search("#dbcsleeps")

  def generate_photo_stream(response)
    response.attrs[:statuses].each do |tweet_object|
      url = tweet_object[:entities][:media][0][:media_url_https]
      created_at = tweet_object[:created_at]
      Photo.create(url: url, created_at: created_at)
    end
  end

    generate_photo_stream(search_object)

    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
  end

end