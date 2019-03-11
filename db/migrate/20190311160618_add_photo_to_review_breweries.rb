class AddPhotoToReviewBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :review_breweries, :photo, :string
  end
end
