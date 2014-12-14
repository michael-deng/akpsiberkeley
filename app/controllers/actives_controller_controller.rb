class ActivesControllerController < ApplicationController

	def show
		@active = Active.find(params[:id])
	end

	def index
		@actives = Active.all.sort_by{ |a| a.name.split(' ')[1].downcase }
	end
	
end
