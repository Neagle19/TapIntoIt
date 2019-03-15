class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins do |t|
      t.references :brewery, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
