class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cars = Car.where(user_id: @user.id)
  end
