class Brewery < ApplicationRecord
  has_many :batches
  has_many :beers
  has_many :review_breweries, dependent: :destroy
  validates :description, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true
end
