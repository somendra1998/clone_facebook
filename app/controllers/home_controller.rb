class HomeController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    @users = User.all
  end
end
