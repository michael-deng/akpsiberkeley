class RemoveStuffFromRushees < ActiveRecord::Migration
  def change
  	remove_column :rushees, :course1, :string
  	remove_column :rushees, :course2, :string
  	remove_column :rushees, :course3, :string
  	remove_column :rushees, :course4, :string
  	remove_column :rushees, :course5, :string
  	remove_column :rushees, :course6, :string
  	remove_column :rushees, :course1_grade, :string
  	remove_column :rushees, :course2_grade, :string
  	remove_column :rushees, :course3_grade, :string
  	remove_column :rushees, :course4_grade, :string
  	remove_column :rushees, :course5_grade, :string
  	remove_column :rushees, :course6_grade, :string
  	add_column :rushees, :courses_and_grades, :text
  end
end
