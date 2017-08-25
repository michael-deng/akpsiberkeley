class RusheeCommentUpvote < ActiveRecord::Base
  belongs_to :active
  belongs_to :rushee_comment
end
