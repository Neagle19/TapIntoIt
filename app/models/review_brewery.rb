class ReviewBrewery < ApplicationRecord
  belongs_to :brewery
  belongs_to :user
  has_many :comment_breweries, dependent: :destroy
end
