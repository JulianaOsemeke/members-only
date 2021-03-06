class Users::RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def acount_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
