class Users::SessionsController < Devise::SessionsController

  def create
    super
    current_user.update_attribute(:online_status, true)
  end

  def destroy
    current_user.update_attribute(:online_status, false)
    super
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end



