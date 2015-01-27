class RusheeProfilesController < ApplicationController

	before_action :authenticate_active!, only: [:show, :index]

	def index
		# Sort all actives according to their last names
		@rushee_profiles = RusheeProfile.all.sort_by{ |r| r.name.split(' ')[r.name.split(' ').length - 1].downcase }
	end

	def show
		@rushee_profile = RusheeProfile.find(params[:id])
	end
end
