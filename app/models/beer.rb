class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :batches, dependent: :destroy
  has_many :review_beers, dependent: :destroy
  validates :name, presence: true
  validates :brewery, presence: true
  validates :kind, presence: true
  validates :size, presence: true
  validates :alcohol_percentage, numericality: { only_float: true }, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :kind, :alcohol_percentage ],
    associated_against: {
      brewery: [:name, :address]
    },
    using: {
      tsearch: { prefix: true }
    }

  def rating
    ratings = review_beers.pluck(:rating).flatten
    return 0 if ratings.blank?
    avg = ratings.sum / ratings.size.to_f
  end

  # scope :by_rating, ->(rating) { where("rating >= ?", rating) }
end
