class AddFieldsToRushApplications < ActiveRecord::Migration
  def change
  	add_column :rush_applications, :first_name, :string
  	add_column :rush_applications, :last_name, :string
  	add_column :rush_applications, :email, :string
  	add_column :rush_applications, :phone_number, :string
  	add_column :rush_applications, :year, :string
  	add_column :rush_applications, :major, :string
  	add_column :rush_applications, :major_gpa, :string
  	add_column :rush_applications, :cumulative_gpa, :string
  	add_column :rush_applications, :sat_score, :integer
  	add_column :rush_applications, :haas, :boolean
  	add_column :rush_applications, :classes_now, :text
  	add_column :rush_applications, :extracurriculars, :text
  end
end
