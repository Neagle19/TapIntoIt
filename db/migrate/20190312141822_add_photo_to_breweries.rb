class AddPhotoToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :photo, :string
  end
end
