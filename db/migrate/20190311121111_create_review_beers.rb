class CreateReviewBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :review_beers do |t|
      t.references :beer, foreign_key: true
      t.text :comment
      t.integer :rating
      t.references :user, foreign_key: true
      t.boolean :posted

      t.timestamps
    end
  end
end
