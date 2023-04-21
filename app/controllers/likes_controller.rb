class LikesController < ApplicationController
  before_action :parent, only: [:new, :create]

  def new
    @like = Like.new
  end

  def create
    @like = @parent.likes.new(user_id: current_user.id)
    @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end

  private

  def parent
    @klass = params[:likeable_type].constantize
    @parent = @klass.find(params[:likeable_id])
  end

end
