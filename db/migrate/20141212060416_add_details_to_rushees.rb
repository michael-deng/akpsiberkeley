class AddDetailsToRushees < ActiveRecord::Migration
  def change
    add_column :rushees, :major, :string
    add_column :rushees, :gpa, :string
    add_column :rushees, :course1, :string
    add_column :rushees, :course1_grade, :string
    add_column :rushees, :course2, :string
    add_column :rushees, :course2_grade, :string
    add_column :rushees, :course3, :string
    add_column :rushees, :course3_grade, :string
    add_column :rushees, :course4, :string
    add_column :rushees, :course4_grade, :string
    add_column :rushees, :course5, :string
    add_column :rushees, :course5_grade, :string
    add_column :rushees, :course6, :string
    add_column :rushees, :course6_grade, :string
    add_column :rushees, :cut, :boolean
  end
end
