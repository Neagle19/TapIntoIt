class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @brewery = Brewery.where(user_id: @user.id)
  end
