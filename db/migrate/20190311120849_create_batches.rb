class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.date :bottled_date
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
