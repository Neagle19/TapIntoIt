class CreateReviewBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :review_breweries do |t|
      t.references :brewery, foreign_key: true
      t.text :content
      t.integer :rating
      t.references :user, foreign_key: true
      t.boolean :posted

      t.timestamps
    end
  end
end
