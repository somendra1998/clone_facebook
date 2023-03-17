module CommentsHelper
  def post_comments(post)
    comments = post.comments.map do |comment|
      content_tag 'div', class: 'comented-box' do
        "<p class= 'commented-text'><b>#{comment.user.full_name}</b>:<br> #{comment.content}<br>#{like_comment(comment, "Comment")}</p>"
      end
    end
    CGI.unescapeHTML(comments.join).html_safe
  end
end
