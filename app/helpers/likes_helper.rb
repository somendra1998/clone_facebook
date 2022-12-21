module LikesHelper
  def like_btn(post, likeable_type)
    binding.pry
    if current_user.likes.where(likeable_id: post.likes.first.id, likeable_type: likeable_type).any?
      link_to unlike_path(post.id), method: :delete, :remote => true do 
        image_tag("liked_logo.png", class: "liked-logo",id:"like-post-#{post.id}" ) 
      end
    else
      link_to likes_path(post_id: post.id, likeable_type: likeable_type), method: :post, :remote => true do 
        image_tag("like_logo.png", class: "like-logo", id: "like-post-#{post.id}") 
      end
    end
  end
end
