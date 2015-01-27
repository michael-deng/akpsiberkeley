class AddPhotoColumnToRusheeProfiles < ActiveRecord::Migration
  def self.up
    add_attachment :rushee_profiles, :photo
  end

  def self.down
    remove_attachment :rushee_profiles, :photo
  end
end
