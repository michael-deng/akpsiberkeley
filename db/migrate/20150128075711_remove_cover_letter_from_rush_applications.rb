class RemoveCoverLetterFromRushApplications < ActiveRecord::Migration
  def change
  	remove_column :rush_applications, :cover_letter, :text
  end
end
