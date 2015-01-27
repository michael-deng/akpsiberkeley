class DeleteRusheeComments < ActiveRecord::Migration
  def change
  	drop_table :rushee_comments
  end
end
