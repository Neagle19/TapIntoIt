class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html
    end
  end
end

#   def create
#     @user = User.new(user_params)
#     if params[:checkbox]
#       @user.role = :admin
#     end
#     @user.save
#     if @user.role = :admin
#       redirect_to
#     else
#       redirect_to registration_path(resource_name)
#     end
#   end

#   private

#   def user_params
#     require..
#   end

