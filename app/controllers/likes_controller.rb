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
    @like = Like.destroy(params[:id])
  end

  private

  def parent 
    @klass = params[:likeable_type].capitalize.constantize
    @parent = @klass.find(params[:post_id])
  end

  # def like_params
  #   params.require(:like).merge(user_id: current_user.id,)

  # end
end
