class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    signup_keys = %i[first_name last_name email]
    devise_parameter_sanitizer.permit(:sign_up, keys: signup_keys)
  end
end
