class CommentBrewery < ApplicationRecord
  belongs_to :review_brewery
  belongs_to :user
  validates :review_brewery, presence: true
  validates :user, presence: true
  validates :content, presence: true
end
