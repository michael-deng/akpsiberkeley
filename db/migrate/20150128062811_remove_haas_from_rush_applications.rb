class RemoveHaasFromRushApplications < ActiveRecord::Migration
  def change
  	remove_column :rush_applications, :haas, :boolean
  end
end
