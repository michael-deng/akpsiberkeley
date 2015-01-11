class AddAttachmentPhotoToRushees < ActiveRecord::Migration
  def self.up
    change_table :rushees do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :rushees, :photo
  end
end
