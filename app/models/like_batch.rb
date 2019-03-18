class LikeBatch < ApplicationRecord
  belongs_to :user
  belongs_to :review_batch
end
