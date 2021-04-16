class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
  #before_action :authenticate_user!
  #before_action :configure_permitted_parameters, if: :devise_controller?

  #private
  #def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:encrypted_password])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
  #end
end
