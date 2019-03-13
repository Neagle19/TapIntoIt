class LikeBeer < ApplicationRecord
  belongs_to :user
  belongs_to :review_beer
end
