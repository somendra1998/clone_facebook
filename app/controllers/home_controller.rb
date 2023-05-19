class HomeController < ApplicationController
  
  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
    @comment = Comment.new
    @users = User.all_except(current_user)
  end
end
