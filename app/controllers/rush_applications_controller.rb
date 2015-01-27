class RushApplicationsController < ApplicationController

	def new
		@rush_application = RushApplication.new
	end

	def index
		@rush_applications = RushApplication.all.sort_by{ |r| r.last_name.split(' ')[0].downcase }
	end

	def show
		@rush_application = rush_application.find(params[:id])
	end
end
