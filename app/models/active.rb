class Active < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :career_entries, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :pledge_class, presence: true
  validates :hometown, presence: true
  validates :linkedin, presence: true
  validates :previous_positions, presence: true
  validates :eboard, presence: true
  validates :display, presence: true
  validates :bio, presence: true

end
