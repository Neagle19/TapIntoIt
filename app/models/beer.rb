class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :batch
  has_many :review_beers, dependent: :destroy
end
