class RushApplication < ActiveRecord::Base

	before_save { self.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_attached_file :resume
	has_attached_file :cover_letter
	has_attached_file :transcript

	validates_attachment :resume, :cover_letter,
                      content_type: {content_type: "application/pdf"},
                      presence: true,
                      size: {in: 0..5.megabytes}

  validates_attachment :transcript,
  										content_type: {content_type: "application/pdf"},
                      presence: true,
  										size: {in: 0..5.megabytes}

  validates :first_name, :last_name,
    presence: true, 
    length: { maximum: 50 }
  
  validates :email,
    presence: true,
    length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: { case_sensitive: false }

 	validates :hometown, :major, :major_gpa, :cumulative_gpa, :sat_score, :classes_now, :extracurriculars, :how_did_you_hear,
 		presence: true
end
