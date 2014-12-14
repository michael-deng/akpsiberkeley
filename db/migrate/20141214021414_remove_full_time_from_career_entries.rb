class RemoveFullTimeFromCareerEntries < ActiveRecord::Migration
  def change
  	remove_column :career_entries, :full_time, :boolean
  end
end
