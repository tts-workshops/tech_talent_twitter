class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :handle, :avatar, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at) }
    devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:email, :password, :password_confirmation, :current_password, :name, :handle, :avatar, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at) 
    }
	end
end
