class Post < ApplicationRecord
  #Associations
  belongs_to :author, class_name: 'User'
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
  has_many_attached :images

  #Validations
  validates :description, presence: true

end
