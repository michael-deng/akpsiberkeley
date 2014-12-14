class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?



  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :major, :hometown, :pledge_class, :previous_positions, :linkedin, :biography, :gpa, :course1, :course1_grade, :course2, :course2_grade, :course3, :course3_grade, :course4, :course4_grade, :course5, :course5_grade, :course6, :course6_grade)}
    end

end
