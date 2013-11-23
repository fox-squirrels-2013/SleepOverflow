class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params[:comment])

    respond_to do |format|
      format.html { redirect_to comments_path, notice: "Your input is appreciated."}
      format.js
    end
  end

end
