class ProspectsController < ApplicationController

	def create
		@prospect = Prospect.new(prospect_params)
		if @prospect.save
			flash[:success] = "Email saved!"
			redirect_to rush_path
		else
			flash[:error] = "There was an error with your submission; please try again."
			redirect_to rush_path
		end
	end

	private

    def prospect_params
      params.require(:prospect).permit(:email)
    end
end
