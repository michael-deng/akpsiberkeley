class RusheeCommentsController < ApplicationController

	def create
		@rushee_profile = RusheeProfile.find(params[:rushee_profile_id])
		@rushee_comment = @rushee_profile.rushee_comments.build(rushee_comment_params)
		@rushee_comment.active = current_active
		if @rushee_comment.save
			flash[:success] = "Comment created!"
			redirect_to @rushee_profile

		else
			flash[:error] = "There was an error with your comment; please try again."
			redirect_to @rushee_profile
		end
	end

	private

    def rushee_comment_params
      params.require(:rushee_comment).permit(:content)
    end
end
