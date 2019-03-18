class ReviewBatch < ApplicationRecord
  belongs_to :batch
  belongs_to :user
  has_many :comment_batches, dependent: :destroy
  has_many :like_batches, dependent: :destroy

  validates :batch, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :user, presence: true
end
