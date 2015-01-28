class RusheeProfile < ActiveRecord::Base

	has_many :rushee_comments, dependent: :destroy

	has_attached_file :photo, 
    :styles => { :medium => "300x300>", :small => "200x200>", :thumb => "100x100>" }

  validates_attachment :photo, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, 
    :size => { :in => 0..5.megabytes }

  validates :name, 
    presence: true, 
    length: { maximum: 50 }
end
