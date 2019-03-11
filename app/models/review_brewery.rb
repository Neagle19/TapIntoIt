class ReviewBrewery < ApplicationRecord
  belongs_to :brewery
  belongs_to :user
  has_many :comment_breweries, dependent: :destroy
  validates :brewery, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :user, presence: true
end
