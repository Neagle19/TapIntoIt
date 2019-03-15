class Batch < ApplicationRecord
  belongs_to :brewery
  # belongs_to :beer
  validates :bottled_date, presence: true
  validates :brewery, presence: true
end
