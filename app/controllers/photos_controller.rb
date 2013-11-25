class PhotosController < ApplicationController
  before_filter :authenticate_user, :only => [:index]

  def index
    search_object = CLIENT.search("#dbcsleeps")
    Photo.create_from_tweets search_object.attrs[:statuses]
    @photos = Photo.all
  end

  def show
    # line 12 makes no sense
    current_user
    @photo = Photo.find(params[:id])
    @comment = Comment.new
  end

  private
  def authenticate_user
    redirect_to failure_path unless current_user
  end

  def generate_photo_stream(response)

  end
end
