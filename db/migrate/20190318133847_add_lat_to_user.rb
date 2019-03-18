class AddLatToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lat, :float
    add_column :users, :lng, :float

  end
end
