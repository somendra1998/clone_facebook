module CommentsHelper
  def post_comments(post)
    content_tag 'div', class: 'comments' do
      comments = post.comments.map do |comment|
        post_comment(comment)
      end
      CGI.unescapeHTML(comments.join).html_safe
    end
  end

  def post_comment(comment)
    content_tag 'div', class: 'comented-box' do
      "<p class= 'commented-text'><b>#{comment.user.full_name}</b>:<br> #{comment.content}<br>#{like_comment(comment, "Comment")}</p>"
    end
  end
end
