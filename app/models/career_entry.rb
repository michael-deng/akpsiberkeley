class CareerEntry < ActiveRecord::Base

	# Each career entry is linked to an active
	belongs_to :active

	# These fields have to be filled out when admins or actives creates career entries
	validates :name, presence: true
	validates :company, presence: true
	validates :group, presence: true
	validates :year, presence: true, length: {is: 4}
	validates :fulltime_or_intern, presence: true
	validates :location, presence: true
	validates :job_category, presence: true

	validates_inclusion_of :fulltime_or_intern, :in => ["Full-time", "Internship"]
	validates_inclusion_of :job_category, :in => ["Investment Banking", "Consulting", "Finance", "Technology", "Software Engineering", "Other"]

end
