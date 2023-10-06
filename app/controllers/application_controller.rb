class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  protected
  def configure_permitted_parameters
    signup_keys = %i[first_name last_name email password password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: signup_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: signup_keys)
  end

  def layout_by_resource
    unless devise_controller?
      "user_area"
    end
  end
end
