class HomeController < ApplicationController
  
  def index
    @post = Post.all
  end
  
  def create
    binding.pry
  end
end
