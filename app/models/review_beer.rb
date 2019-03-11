class ReviewBeer < ApplicationRecord
  belongs_to :beer
  belongs_to :user
  has_many :comment_beers
end
