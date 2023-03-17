module LikesHelper
  def like_post(post, likeable_type)
    if current_user.likes.where(likeable_id: post.id, likeable_type: likeable_type).any?
      link_to unlike_path(post.likes.first&.id), method: :delete, :remote => true do 
        image_tag("liked_logo.png", class: "liked-post",id:"like-post-#{post.id}") 
      end
    else
      link_to likes_path(likeable_id: post.id, likeable_type: likeable_type), method: :post, :remote => true do 
        image_tag("like_logo.png", class: "like-post", id: "like-post-#{post.id}") 
      end
    end
  end
  
  def like_comment(comment, likeable_type)
    if current_user.likes.where(likeable_id: comment.id, likeable_type: likeable_type).any?
      link_to unlike_path(comment.likes.first&.id), method: :delete, :remote => true do 
        image_tag("liked_logo.png", class: "liked-comment",id:"like-comment-#{comment.id}" ) 
      end
    else
      link_to likes_path(likeable_id: comment.id, likeable_type: likeable_type), method: :post, :remote => true do 
        image_tag("like_logo.png", class: "like-comment", id: "like-comment-#{comment.id}") 
      end
    end
  end
end
