class RushApplicationsController < ApplicationController

	before_action :authenticate_active!, only: [:index, :show]
	
	def new
		@rush_application = RushApplication.new
	end

	def create
		@rush_application = RushApplication.new(rush_application_params)
    if @rush_application.save
      redirect_to application_submitted_path
    else
      render 'new'
    end
	end

	def index
		@rush_applications = RushApplication.all.sort_by{ |r| r.last_name.split(' ')[0].downcase }
	end

	def show
		@rush_application = rush_application.find(params[:id])
	end

	private

		def rush_application_params
      params.require(:rush_application).permit(:first_name, :last_name, :email, :phone_number,
      																					:hometown, :year, :major, :major_gpa, :cumulative_gpa,
      																					:sat_score, :classes_now, :extracurriculars,
      																					:cover_letter, :resume, :transcript)	
    end
end
