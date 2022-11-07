class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @parent = parent
    @like = @parent.likes.new(user_id: current_user.id)
    @like.save
  end

  def destroy
    @unlike = Like.destroy(params[:id])
  end

  private

  def parent 
    Post.find params[:post_id] if params[:post_id].present?
  end

  # def like_params
  #   params.require(:like).merge(user_id: current_user.id,)

  # end
end
