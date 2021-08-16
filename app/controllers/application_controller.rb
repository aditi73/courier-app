class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, user_detail_attributes: [:id, :full_name, :address, :pin_code, :phone]])
  end

  def after_sign_in_path_for(resource) 
    '/dashboard'
  end 

  def after_sign_up_path_for(resource) 
    '/dashboard' 
  end 
end
