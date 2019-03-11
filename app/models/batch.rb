class Batch < ApplicationRecord
  belongs_to :brewery
  has_many :beers, dependent: :destroy
  validates :bottled_date, presence: true
  validates :brewery, presence: true
end
