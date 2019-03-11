class AddPhotoToReviewBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :review_beers, :photo, :string
  end
end
