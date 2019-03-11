class CommentBrewery < ApplicationRecord
  belongs_to :review_brewery
  belongs_to :user
end
