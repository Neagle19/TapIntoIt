class Batch < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer
  has_many :review_batches, dependent: :destroy
  validates :bottled_date, presence: true
  validates :brewery, presence: true
end
