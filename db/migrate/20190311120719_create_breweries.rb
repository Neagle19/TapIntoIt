class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.text :description
      t.string :address
      t.string :name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
