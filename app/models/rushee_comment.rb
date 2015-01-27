class RusheeComment < ActiveRecord::Base
  belongs_to :active
  belongs_to :rushee_profile
end
