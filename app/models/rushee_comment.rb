class RusheeComment < ActiveRecord::Base
  belongs_to :active
  belongs_to :rushee_profile
  has_many :rushee_comment_upvotes, dependent: :destroy

  def get_upvote_names
    active_ids = self.rushee_comment_upvotes.map(&:active_id)
    return Active.find(active_ids).map(&:name)
  end
end
