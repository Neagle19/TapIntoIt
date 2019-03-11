class CreateCommentBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_beers do |t|
      t.references :review_beer, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
