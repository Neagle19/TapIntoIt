class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
    # @received_friend_connections = @user.received_friend_connections.count
    # @sent_friend_connections = @user.sent_friend_connections.count
    # @friend_connections = @received_friend_connections + @sent_friend_connections
    @review_beers = @user.review_beers.count
    @review_breweries = @user.review_breweries.count
    @review_comments = @user.review_beers.last(5)
    # @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
  end
end

