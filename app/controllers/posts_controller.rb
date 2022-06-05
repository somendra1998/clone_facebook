class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.all
  end

  def create
    @post = Post.new(params[post_params])
    if @post.save
      redirect_to "posts"
    end
  end

  private

  def post_params
    params.require(:post).permit(:description)
  end
end
