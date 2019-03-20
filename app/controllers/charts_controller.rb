class ChartsController < ApplicationController
  def new_users
    render json: User.group_by_month(:created_at).count
  end
end
