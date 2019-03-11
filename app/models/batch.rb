class Batch < ApplicationRecord
  belongs_to :brewery
  has_many :beers
end
