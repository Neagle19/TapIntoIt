class AddDescriptionToBatches < ActiveRecord::Migration[5.2]
  def change
    add_column :batches, :description, :text
    add_column :batches, :quantity, :integer
  end
end
