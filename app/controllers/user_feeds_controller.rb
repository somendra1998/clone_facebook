class UserFeedsController < ApplicationController

  def user_feed
    @posts = User.find(params[:user_id]).posts
    @comment = Comment.new
  end

  def view_profile
    @user = current_user
  end
end
