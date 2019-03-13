class AddCoordinatesToBrewery < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :latitude, :float
    add_column :breweries, :longitude, :float
  end
end
