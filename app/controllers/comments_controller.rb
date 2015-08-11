class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def create
  end

  def destroy
    @comment.destroy
    redirect_to request.referrer || root_url
  end

  protected

  def set_comment
    @comment = Comment.find( params[:id] )
  end

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end
