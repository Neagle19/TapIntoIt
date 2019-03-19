class FriendConnectionsController < ApplicationController
  def create
    puts "im in create friendocnnetion"
    receiver = User.find(params[:id])
    @new_connection = FriendConnection.new(requester: current_user, receiver: receiver)
    p @new_connection
    if @new_connection.save
      redirect_to profile_path(receiver.id)
    else
      redirect_to profile_path(receiver.id)
    end
  end

  def accept_friend
    connection = FriendConnection.find(params[:id])
    connection.accepted = true
    connection.save
    redirect_to notifs_path
  end
end
