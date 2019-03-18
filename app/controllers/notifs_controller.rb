class NotifsController < ApplicationController
  def index
    @notifications = []
    # friend requests
    FriendConnection.where(receiver: current_user, accepted: false).each do |connection|
      @notifications.push([connection, connection.requester.photo, connection.requester.username, "#{connection.requester.username} wants to be your friend!", profile_path(connection.requester.id)])
    end
    # some friend checked in at a brewery
    Checkin.where(user: FriendConnection.get_friends(current_user)).each do |checkin|
      @notifications.push([checkin, checkin.user.photo, checkin.user.username, "#{checkin.user.username} just checked in at #{checkin.brewery.name}", brewery_path(checkin.brewery.id)])
    end
    # brewery added a new beer
    followed_breweries = Brewery.find(Follow.where(user: current_user).pluck(:brewery_id))
    Beer.where(brewery: followed_breweries).each do |beer|
      @notifications.push([beer, beer.photo, beer.brewery.name, "#{beer.brewery.name} just added #{beer.name} to their list of beers", beer_path(beer.id)])
    end
    # brewery created new batch
    Batch.where(brewery: followed_breweries).each do |batch|
      @notifications.push([batch, batch.beer.photo, batch.brewery.name, "#{batch.brewery.name} added a new batch to #{batch.beer.name}", beer_batch_path(batch.beer.id, batch.id)])
    end

    @notifications = @notifications.sort_by { |k| k[0].created_at }.reverse
 end
end
