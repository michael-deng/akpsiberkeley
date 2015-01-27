class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.is_a?(Active)
      active_path(resource)
    elsif resource.is_a?(Rushee)
      rushee_path(resource)
    else
      root_path
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :first_name, :last_name, :email, :phone_number, :major, 
      																																:year, :eboard_position, :hometown, :pledge_class, 
      																																:previous_positions, :linkedin, :biography, :placement, :gpa, 
      																																:major_gpa, :cumulative_gpa, :sat_score, :courses_and_grades, 
      																																:haas, :classes_now, :extracurriculars, :photo, :password, 
                                                                      :password_confirmation, :current_password, :photo_file_name, 
                                                                      :photo_content_type, :photo_file_size, :photo_updated_at) }
    end

end
