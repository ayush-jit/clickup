class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  respond_to :html, :json
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit( :role , :password_confirmation, :username, :first_name, :last_name, :email, :password, :gender, :phone_number)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit( :role , :password_confirmation, :current_password, :username, :first_name, :last_name, :email, :password, :gender, :phone_number)
    end
  end
end
