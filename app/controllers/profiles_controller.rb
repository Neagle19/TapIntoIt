class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
    if @user.admin?
      @beers = Beer.where(brewery_id: @brewery[0].id)
    end
    @review_beers = @user.review_beers.count
    @review_breweries = @user.review_breweries.count
    @received_friend_connections = FriendConnection.where(receiver: @user).count
    @sent_friend_connections = FriendConnection.where(requester: @user).count
    @friends_count = @received_friend_connections + @sent_friend_connections

    if FriendConnection.where(receiver: @user, requester: current_user)[0].nil? && FriendConnection.where(receiver: current_user, requester: @user)[0].nil?
      @connection = false
    else
      @connection = true
    end

    @brewery = Brewery.where(user_id: @user.id)
    @posts = ReviewBeer.where(user: @user).sort_by{|review| review.created_at}.reverse
    @all_names = User.all.map { |user| user.username }.sort
    @all_names.delete(current_user.username)
  end

  def edit
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
    # @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
  end

  def show_with_username
    puts "-"*100
    puts params
    @user = User.where(username: params[:user][:username])[0]
    redirect_to profile_path(@user.id)
  end

  private

  def check_params_username
    params.require(:user).permit(:username)
  end
end
