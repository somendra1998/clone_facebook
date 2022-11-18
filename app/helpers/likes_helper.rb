module LikesHelper
  def like_btn(post)
    if current_user.likes.where(likeable_id:post.id, likeable_type: "Post").any? 
        image_tag("liked_logo.png", class: "liked-logo",id:"like-post-#{post.id}", goto: post_unlike_path(post.likes.first.id), post_id: post.id, method: :delete ) 
    else
        image_tag("like_logo.png", class: "like-logo", id: "like-post-#{post.id}", goto: post_likes_path(post.id), post_id: post.id, method: :post) 
    end
  end
end
