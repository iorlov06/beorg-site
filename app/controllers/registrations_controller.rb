class RegistrationsController < Devise::RegistrationsController
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end