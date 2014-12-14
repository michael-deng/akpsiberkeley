class ChangeStuffInCareerEntries < ActiveRecord::Migration
  def change
  	remove_column :career_entries, :fulltime, :boolean
  	remove_column :career_entries, :intern, :boolean
  	add_column :career_entries, :fulltime_or_intern, :string
  end
end
