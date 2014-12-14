class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

	# Specifies the path that Devise redirects to after active sign-in
  def after_sign_in_path_for(resource)
    if @active
      active_path(@active)
    elsif @rushee
      rushee_path(@rushee)
    else
      root_path
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) << :name
    end

end
