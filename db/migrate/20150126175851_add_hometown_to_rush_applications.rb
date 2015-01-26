class AddHometownToRushApplications < ActiveRecord::Migration
  def change
  	add_column :rush_applications, :hometown, :string
  end
end
