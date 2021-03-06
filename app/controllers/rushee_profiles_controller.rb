class RusheeProfilesController < ApplicationController
	
	before_action :authenticate_active!, only: [:show, :index]

	def index
		# Sort all actives according to their last names
		@rushee_profiles_by_name = RusheeProfile.all.sort_by{ |r| r.name.split(' ')[r.name.split(' ').length - 1].downcase }
		@rushee_profiles = @rushee_profiles_by_name.sort_by{ |r| (r.rushee_comments.count * -1) }
	end

	def show
		@rushee_profile = RusheeProfile.find(params[:id])
		@rushee_comments = @rushee_profile.rushee_comments.find( :all, :order => "created_at DESC" )
		@rushee_comment = @rushee_profile.rushee_comments.build if active_signed_in?

		@upvoted_comments = current_active.rushee_comment_upvotes.map(&:rushee_comment_id)
	end

	def destroy
		@rushee_profile.destroy
	end
end
