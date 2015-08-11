class CommentsController < ApplicationController

  before_action :set_comment, only: [:destroy]

  #def index
  #end

  def new
    @post = Post.find( params[:post] )
    @comment = Comment.new
  end

  def create
    @post = Post.find( params[:comment][:post] )
    comment = @post.comments.create
    comment.title = params[:comment][:title]
    comment.comment = params[:comment][:comment]
    comment.save
    redirect_to '/posts/#{params[:comment][:post]}'
  end

  def destroy
    @comment.destroy
    redirect_to request.referrer || root_url
  end

  protected

  def set_comment
    @comment = Comment.find( params[:id] )
  end

end
