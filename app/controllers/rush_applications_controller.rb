class RushApplicationsController < ApplicationController

	def index
		@rushapplications = RushApplication.all.sort_by{ |r| r.last_name.split(' ')[0].downcase }
	end

	def show
		@rushapplication = rush_application.find(params[:id])
	end
end
