class PostsController < ApplicationController
  def index
    # here we should change it so it only gives the posts of the friends of the current user
    @posts = ReviewBeer.where(user: User.first)
  end

  def show
  end
end
