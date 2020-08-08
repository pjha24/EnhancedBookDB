class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Author not deleted: Only admins can delete users'
  end
end
