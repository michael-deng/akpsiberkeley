class AddHowDidYouHearToRushApplications < ActiveRecord::Migration
  def change
  	add_column :rush_applications, :how_did_you_hear, :text
  end
end
