class CommentsController < ApplicationController
  before_action :parent, only: [:create]

  def create
    # @comment = @parent.comments.new(user_id: current_user.id)
    @comment = @parent.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    
  end

  private
  
  def comment_params
    params.require(:comment).permit(:content)
  end

  def parent 
    @parent = Post.find params[:post_id] if params[:post_id].present?
  end

end
