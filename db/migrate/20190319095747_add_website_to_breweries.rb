class AddWebsiteToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :website, :string
  end
end
