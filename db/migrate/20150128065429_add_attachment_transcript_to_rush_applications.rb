class AddAttachmentTranscriptToRushApplications < ActiveRecord::Migration
  def self.up
    change_table :rush_applications do |t|
      t.attachment :transcript
    end
  end

  def self.down
    remove_attachment :rush_applications, :transcript
  end
end
