class Award < ActiveRecord::Base

	validates :name, presence: true
	validates :members, presence: true
	validates :year, presence: true, length: {is: 4}

end
