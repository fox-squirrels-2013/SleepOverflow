class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.photo_id = params[:photo_id]
    @comment.save
    redirect_to photo_path(params[:photo_id])
    # respond_to do |format|
    #   p "more dicks"
    #   format.html { redirect_to comment_path }
    #   render :json => { 'status' => 'success' }
    #   p "dicks"


  end

end
