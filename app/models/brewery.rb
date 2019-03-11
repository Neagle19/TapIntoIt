class Brewery < ApplicationRecord
  has_many :batches
  has_many :beers
  has_many :review_breweries, dependent: :destroy
end
