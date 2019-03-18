class AddTablesToLikeBatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :like_batches, :user, foreign_key: true
    add_reference :like_batches, :review_batch, foreign_key: true
  end
end
