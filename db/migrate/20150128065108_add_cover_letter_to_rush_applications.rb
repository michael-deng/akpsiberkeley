class AddCoverLetterToRushApplications < ActiveRecord::Migration
  def change
  	add_column :rush_applications, :cover_letter, :text
  end
end
