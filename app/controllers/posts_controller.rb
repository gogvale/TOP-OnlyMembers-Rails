class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
    @post = Post.new
  end

  def create
    @post.save
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post.save
  end

  def destroy
    Post.find(params[:id]).destroy
  end
end
