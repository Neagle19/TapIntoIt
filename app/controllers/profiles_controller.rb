class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
    # @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
  end
    def edit
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
    # @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
  end
end
