class HomeController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
  end
end
