class CommentBatch < ApplicationRecord
  belongs_to :user
  belongs_to :review_batch
  validates :review_batch, presence: true
  validates :user, presence: true
  validates :content, presence: true
end
