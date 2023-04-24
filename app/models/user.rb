class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #Scopes
  scope :all_except, ->(user) { where.not(id: user) }

  # Associations 
  has_one_attached :profile_image
  has_many :posts, class_name: 'Post', foreign_key: "author_id"
  has_many :comments
  has_many :likes
  has_many :pending_friend_requests, -> { where(status: false) }, class_name: 'Friendship', foreign_key: "reciever_id"     # acts as a reciever
  # has_many :pending_friend_request_senders, through: :pending_friend_requests, source: :sender #, foreign_key: :sender_id, class_name: :User
  has_many :sent_requests, class_name: 'Friendship', foreign_key: "sender_id" # acts as a sender
end
