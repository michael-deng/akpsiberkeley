class Award < ActiveRecord::Base

	# These fields have to be filled out when an admin creates awards
	validates :name, presence: true
	validates :members, presence: true
	validates :year, presence: true, length: {is: 4}

end
