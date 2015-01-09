class CareerEntriesController < ApplicationController
	def index
		@careerentries = CareerEntry.all
		@year = params[:year].to_i
	end
end
