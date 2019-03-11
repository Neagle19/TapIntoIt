class CommentBeer < ApplicationRecord
  belongs_to :review_beer
  belongs_to :user
end
