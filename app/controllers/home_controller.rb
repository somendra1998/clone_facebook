class HomeController < ApplicationController
  
  def index
    # binding.pry
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    @users = User.all_except(current_user)
  end
end
