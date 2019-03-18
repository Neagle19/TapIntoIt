class CreateLikeBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :like_batches do |t|

      t.timestamps
    end
  end
end
