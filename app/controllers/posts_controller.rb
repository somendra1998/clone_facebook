class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    @post = current_user.posts.new(post_params)
    @post.save
  end

  private

  def post_params
    params.require(:post).permit(:description)
  end
end
