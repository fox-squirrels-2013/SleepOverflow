class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.photo_id = params[:photo_id]
    @comment.save
    # redirect_to photo_path(params[:photo_id])


      p "dicks"
      p "more dicks"
      render :json => {bender: @comment }
      p "even more dicks"


  end

end
