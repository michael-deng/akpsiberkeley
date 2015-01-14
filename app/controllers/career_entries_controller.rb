class CareerEntriesController < ApplicationController

	before_action :authenticate_active!, only [:new, :create]
	before_action :correct_active, only [:edit, :update, :destroy]
	
	def index
		@careerentries = CareerEntry.all
		@year = params[:year].to_i
	end

	def new
		@active = current_active
		@careerentry = @active.career_entries.build
	end

	def create
		@careerentry = current_active.career_entries.build(careerentry_params)
		if @careerentry.save
			flash[:success] = "Your career entry has been successfully created."
			redirect_to current_active
		else
			flash.now[:error] = "Something went wrong with your new career entry. Please check your information and try again."
			render 'new'
		end
	end

	def edit
		@careerentry = CareerEntry.find(params[:id])
		@active = @careerentry.active
	end

	def update
		@careerentry = CareerEntry.find(params[:id])
		if @careerentry.update_attributes(career_params)
			flash[:success] = "Your career entry has been successfully updated."
			redirect_to current_active
		else
			flash.now[:error] = "Something went wrong with your career entry update. Please check your information and try again."
			render 'edit'
		end
	end

	def destroy
		@careerentry.destroy
		flash[:success] = "Your career entry has been successfully deleted."
		redirect_to request.referrer || root_url

	private

		def careerentry_params
			params.require(:career_entry).permit(:name, :company, :year, :job_category, :group, :location, :fulltime_or_intern)
		end

		def correct_active
			@careerentry = current_active.career_entries.fin(params[:id])
			redirect_to root_url if @careerentry.nil?
		end
end
