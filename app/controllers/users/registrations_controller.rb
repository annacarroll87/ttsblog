class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if :devise_controller?

  def configure_permitted_parameters 
    devise_parameter_sanitizer.for(:sign_up) do |u| u.permit(
    	:email, :password, :password_confirmation, :name, :username, :birthday)
    devise_parameter_sanitizer.for(:account_update) do |u| u.permit(
    	:email, :password, :password_confirmation, :name, :username, :birthday)
  end
end