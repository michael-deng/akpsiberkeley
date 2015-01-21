class Active < ActiveRecord::Base

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo, 
    :styles => { :medium => "300x300>", :small => "250x250>", :thumb => "100x100>" }

  validates_attachment :photo, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, 
    :size => { :in => 0..5.megabytes }

  # Each active can have many career entries
  has_many :career_entries, dependent: :destroy

  # These fields have to exist when an active is created
  validates :name, 
    presence: true, 
    length: { maximum: 50 }
  
  validates :email, 
    presence: true, 
    length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: { case_sensitive: false }

end
