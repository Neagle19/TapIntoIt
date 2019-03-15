class AddBeerToBatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :batches, :beer, foreign_key: true
  end
end
