class FollowsController < ApplicationController
  def create
    follow = Follow.new(user: current_user, brewery: Brewery.find(params[:id]))
    if follow.save!
      redirect_to brewery_path(follow.brewery.id)
    else
      redirect_to brewery_path(follow.brewery.id)
    end
  end
end
