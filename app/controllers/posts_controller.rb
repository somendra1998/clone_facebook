class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.all
  end

  def new
    @post = Post.new
  end


  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.permit(:description)
  end
end
