class FriendConnection < ApplicationRecord
  belongs_to :requester, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'

  def self.get_friends(user)
    friends = []
    FriendConnection.where(requester: user, accepted: true).each { |connection| friends.push(connection.receiver) }
    FriendConnection.where(receiver: user, accepted: true).each { |connection| friends.push(connection.requester) }
    return friends
  end
end
