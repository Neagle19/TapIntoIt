class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  ROLE = [
    ROLE_ADMIN = "admin",
    ROLE_USER = "user"
  ]
  has_many :sent_friend_connections, :class_name => 'Friend_connection', :foreign_key => 'requester_id'
  has_many :received_friend_connections, :class_name => 'Friend_connection', :foreign_key => 'receiver_id'
  has_many :review_breweries, dependent: :destroy
  has_many :review_batches, dependent: :destroy
  has_many :comment_batches, through: :review_batches
  has_many :comment_breweries, through: :review_breweries
  has_many :like_batches
  has_many :checkins
  has_many :breweries

  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable



  mount_uploader :photo, PhotoUploader

  validates :role, inclusion: ROLE
  validates :username, uniqueness: true

  enum role: [:user, :admin]

  def admin?
    role == ROLE_ADMIN
  end


end
