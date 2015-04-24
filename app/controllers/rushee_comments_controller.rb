class RusheeCommentsController < ApplicationController

	before_action :authenticate_active!, only: [:create, :destroy]
	before_action :correct_active, only: :destroy

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

	def destroy
		@rushee_profile = @rushee_comment.rushee_profile
		@rushee_comment.destroy
		redirect_to @rushee_profile
	end

	private

    def rushee_comment_params
      params.require(:rushee_comment).permit(:content)
    end

    def correct_active
			@rushee_comment = current_active.rushee_comments.find_by_id(params[:id])
			redirect_to root_path if @rushee_comment.nil?
		end
end
