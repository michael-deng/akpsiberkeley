class AddAttachmentCoverLetterToRushApplications < ActiveRecord::Migration
  def self.up
    change_table :rush_applications do |t|
      t.attachment :cover_letter
    end
  end

  def self.down
    remove_attachment :rush_applications, :cover_letter
  end
end
