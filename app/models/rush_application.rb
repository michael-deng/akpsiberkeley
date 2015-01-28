class RushApplication < ActiveRecord::Base

	has_attached_file :resume
	has_attached_file :cover_letter
	has_attached_file :transcript

	validates_attachment :cover_letter, :resume,
                      content_type: {content_type: "application/pdf"},
                      presence: true,
                      size: {in: 0..1.megabytes}

  validates_attachment :transcript,
  										content_type: {content_type: "application/pdf"},
  										size: {in: 0..1.megabytes}

  validates :first_name, :last_name,
    presence: true, 
    length: { maximum: 50 }
  
  validates :email,
    presence: true,
    length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: { case_sensitive: false }



end
