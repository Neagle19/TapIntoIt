class CreateLikeBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :like_beers do |t|
      t.references :user, foreign_key: true
      t.references :review_beer, foreign_key: true

      t.timestamps
    end
  end
end
