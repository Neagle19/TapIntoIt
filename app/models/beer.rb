class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :batch
  has_many :review_beers, dependent: :destroy
  validates :name, presence: true
  validates :brewery, presence: true
  validates :type, presence: true
  validates :size, presence: true
  validates :alcohol_percentage, numericality: { only_integer: true }, presence: true
  validates :batch, presence: true
  validates :description, presence: true
end
