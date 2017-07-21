class ApplicationController < ActionController::Base
  # Prevent CSFR attacks by raising an exception
  protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #Configure permitted paramaters for devise
  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_comfirmation, :remember_me, :avatar, :avatar, :avatar_cache]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end
