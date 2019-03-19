class Brewery < ApplicationRecord
  has_many :batches
  has_many :beers
  has_many :checkins
  has_many :follows
  has_many :review_breweries, dependent: :destroy
  belongs_to :user
  validates :description, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true
  validates :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :address],
    using: {
      tsearch: { prefix: true }
    }
end

