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

	def create_upvote
		upvote = RusheeCommentUpvote.new(:rushee_comment_id => params[:rushee_comment_id], :active_id => current_active.id)
		if (upvote.save)
			flash[:success] = "Upvote successful!"
			redirect_to :back
		else
			flash[:error] = "There was an error with your upvote; please try again."
			redirect_to :back
		end
	end

	def destroy_upvote
		upvote = RusheeCommentUpvote.where({:active_id => current_active.id, :rushee_comment_id => params[:rushee_comment_id]}).first
		if (upvote.destroy)
			flash[:success] = "Remove upvote successful!"
			redirect_to :back
		else
			flash[:error] = "There was an error with your remove upvote; please try again."
			redirect_to :back
		end
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
