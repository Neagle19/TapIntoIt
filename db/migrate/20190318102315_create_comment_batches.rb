class CreateCommentBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_batches do |t|
      t.references :user, foreign_key: true
      t.references :review_batch, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
