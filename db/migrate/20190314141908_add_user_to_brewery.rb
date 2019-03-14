class AddUserToBrewery < ActiveRecord::Migration[5.2]
  def change
    add_reference :breweries, :user, foreign_key: true
  end
end
