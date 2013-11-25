class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.photo_id = params[:photo_id]
    @comment.save
    # Having specifed that I wanted to render json, I had to make up a key for the rest of it, hence, bender
      render :json => {bender: @comment }
  end
end
