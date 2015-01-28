class AddAttachmentResumeToRushApplications < ActiveRecord::Migration
  def self.up
    change_table :rush_applications do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :rush_applications, :resume
  end
end
