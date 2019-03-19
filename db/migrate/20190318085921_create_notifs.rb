class CreateNotifs < ActiveRecord::Migration[5.2]
  def change
    create_table :notifs do |t|
      t.references :notifable, polymorphic: true, index: true
      t.boolean :read, default: false
      t.timestamps
    end
  end
end
