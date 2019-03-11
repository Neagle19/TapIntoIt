class CreateFriendConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_connections do |t|
      t.references :requester
      t.references :receiver
      t.boolean :accepted

      t.timestamps
    end

    add_foreign_key :friend_connections, :users, column: :requester_id, primary_key: :id
    add_foreign_key :friend_connections, :users, column: :receiver_id, primary_key: :id

  end
end
