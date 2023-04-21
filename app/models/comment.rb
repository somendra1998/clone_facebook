class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  # belongs_to :parent, class_name: "Comment", optional: true
  # has_many :children, class_name: "Comment", foreign_key: :parent_id
end
