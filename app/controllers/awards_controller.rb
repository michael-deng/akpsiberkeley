class AwardsController < ApplicationController

	def index
		@awards = Award.all.sort_by{ |a| a.placement.split(' ')[0].downcase }
	end
end
