class ReviewBeer < ApplicationRecord
  belongs_to :beer
  belongs_to :user
  has_many :comment_beers, dependent: :destroy
  has_many :like_beers, dependent: :destroy

  validates :beer, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :user, presence: true

  mount_uploader :photo, PhotoUploader
end
