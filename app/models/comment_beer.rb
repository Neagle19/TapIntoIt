class CommentBeer < ApplicationRecord
  belongs_to :review_beer
  belongs_to :user
  validates :review_beer, presence: true
  validates :user, presence: true
  validates :content, presence: true
end
