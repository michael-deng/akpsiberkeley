ActiveAdmin.register RushApplication do

  permit_params :first_name, :last_name, :email, :phone_number, :hometown, :year, :major, :major_gpa, :cumulative_gpa, 
                :sat_score, :haas, :classes_now, :extracurriculars, :resume, :cover_letter, :transcript, :cut


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone_number
    column :hometown
    column :year
    column :major
    column :major_gpa
    column :cumulative_gpa
    column :sat_score
    column :classes_now
    column :extracurriculars
    column :resume
    column :cover_letter
    column :transcript
    actions
  end

  form do |f|
    f.inputs "Rushee Information" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
      f.input :hometown
      f.input :year
      f.input :major
      f.input :major_gpa
      f.input :cumulative_gpa
      f.input :sat_score
      f.input :classes_now
      f.input :extracurriculars
      f.input :resume
      f.input :cover_letter
      f.input :transcript
    end
    f.actions
  end
end
