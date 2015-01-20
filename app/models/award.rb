class Award < ActiveRecord::Base

	# These fields have to be filled out when an admin creates awards
	validates :name, presence: true
	validates :members, presence: true
	validates :year, presence: true, length: {is: 4}
	validates :placement, presence: true

	validates_inclusion_of :placement, :in => ["1st Place", "2nd Place", "3rd Place", "Finalist"]
end
