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
  has_many :review_beers, dependent: :destroy
  has_many :comment_beers, through: :review_beers
  has_many :comment_breweries, through: :review_breweries

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD

  mount_uploader :photo, PhotoUploader

  validates :role, inclusion: ROLE

  enum role: [:user, :admin]

  def admin?
    role == ROLE_ADMIN
  end
=======
  mount_uploader :photo, PhotoUploader
>>>>>>> 9ca26dc484c951d84f4df5b5ae23afc27b732bb4
end
