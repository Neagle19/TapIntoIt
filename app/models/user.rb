class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :sent_friend_connections, :class_name => 'Friend_connection', :foreign_key => 'requester_id'
  has_many :received_friend_connections, :class_name => 'Friend_connection', :foreign_key => 'receiver_id'
  has_many :review_breweries, dependent: :destroy
  has_many :review_beers, dependent: :destroy
  has_many :comment_beers, through: :review_beers
  has_many :comment_breweries, through: :review_breweries

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
