class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.references :brewery, foreign_key: true
      t.string :type
      t.string :size
      t.integer :alcohol_percentage
      t.references :batch, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
