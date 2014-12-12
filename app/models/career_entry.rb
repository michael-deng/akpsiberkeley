class CareerEntry < ActiveRecord::Base


	belongs_to :active

	validates :name, presence: true
	validates :company, presence: true
	validates :year, presence: true, length: {is: 4}
	validates :fullintern, presence: true
	validates :location, presence: true
	validates :job_category, presence: true

end
