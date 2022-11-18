module LikesHelper
  def like_btn(post)
    if current_user.likes.where(likeable_id:post.id, likeable_type: "Post").any?
      link_to post_unlike_path(post.likes.first.id), method: :delete, :remote => true do 
        image_tag("liked_logo.png", class: "liked-logo",id:"like-post-#{post.id}" ) 
      end
    else
      link_to post_likes_path(post.id), method: :post, :remote => true do 
        image_tag("like_logo.png", class: "like-logo", id: "like-post-#{post.id}") 
      end
    end
  end
end
