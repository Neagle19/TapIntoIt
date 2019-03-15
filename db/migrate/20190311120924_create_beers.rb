class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.references :brewery, foreign_key: true
      t.string :name
      t.string :kind
      t.string :size
      t.string :name
      t.float :alcohol_percentage
      t.text :description

      t.timestamps
    end
  end
end
