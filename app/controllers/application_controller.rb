class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    new_brewery_path
    # if current_user.admin?
    #   new_brewery_path
    # else
    #   after_sign_in_path_for(resource)
    # end
  end

  def after_sign_in_path_for(resource_or_scope)
    root_path
  end

  private

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    if params[:user] && params[:user][:role] == '1'
      params[:user][:role] = :admin
    elsif params[:user] && params[:user][:role] != '1'
      params[:user][:role] = :user
    end
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :role])
    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
