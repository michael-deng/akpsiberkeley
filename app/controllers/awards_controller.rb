class AwardsController < ApplicationController

	def index
		@awards = Award.all.sort_by{ |a| a.name.split(' ')[0].downcase }
	end
end
