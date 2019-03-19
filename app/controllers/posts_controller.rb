class PostsController < ApplicationController
  def index
    # here we should change it so it only gives the posts of the friends of the current user
    friends_list = FriendConnection.where(requester: current_user)
    other_friends_list = FriendConnection.where(receiver: current_user)
    friends = friends_list + other_friends_list
    friends_to_delete = []
    friends.each do |friendconn|
      friends_to_delete.push(friendconn.requester)
      friends_to_delete.push(friendconn.receiver)
    end

    friends_to_delete.delete(current_user)

    @posts = ReviewBatch.where(user: friends_to_delete).sort_by{|review| review.created_at}.reverse
  end

  def show
  end
end
