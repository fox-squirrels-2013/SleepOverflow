class CommentsController < ApplicationController

  def create
    @photo = Photo.find params[:photo_id]
    @comment = @photo.comments.build params[:comment]
    if @comment.save
    # Having specifed that I wanted to render json, I had to make up a key for the rest of it, hence, bender
      render :text => render_to_string(:partial => 'comment', :locals => {:comment => @comment})
    else
      render :json => {bender: {username: @comment.username, content: "You have to write something to comment, derp"}}
    end
  end
end
