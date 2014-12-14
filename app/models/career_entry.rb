class CareerEntry < ActiveRecord::Base

	belongs_to :active

	validates :name, presence: true
	validates :company, presence: true
	validates :group, presence: true
	validates :year, presence: true, length: {is: 4}
	validates :fulltime_or_intern, presence: true
	validates :location, presence: true
	validates :job_category, presence: true
	validates :bio, presence: true

end
