class ChangeCommentColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :post_id, :integer
    add_reference :comments, :commentable, polymorphic: true, index: true
  end
end
