class RushApplication < ActiveRecord::Base

	before_save { self.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_attached_file :resume
	has_attached_file :cover_letter
	has_attached_file :transcript

	validates_attachment :resume, :cover_letter,
                      presence: true,
                      size: {in: 0..1.megabytes}

  validates_attachment :transcript,
  										size: {in: 0..1.megabytes}

  validates_format_of :resume, :cover_letter, :transcript, :with => %r{\.(docx|doc|pdf)$}i

  validates :first_name, :last_name,
    presence: true, 
    length: { maximum: 50 }
  
  validates :email,
    presence: true,
    length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: { case_sensitive: false }

 	validates :hometown, :major, :major_gpa, :cumulative_gpa, :sat_score, :classes_now, :extracurriculars,
 		presence: true
end
