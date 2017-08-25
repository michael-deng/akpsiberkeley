class CreateRusheeCommentUpvotes < ActiveRecord::Migration
  def change
    create_table :rushee_comment_upvotes do |t|
      t.references :active, index: true
      t.references :rushee_comment, index: true

      t.timestamps
    end
  end
end
