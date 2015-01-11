# Rushee settings in activeadmin

ActiveAdmin.register Rushee do
  permit_params :name, :email, :hometown, :major, :gpa, :courses_and_grades, :cut, :password

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
    column :name
    column :email
    column :hometown
    column :major
    column :gpa
    column :courses_and_grades
    column :cut
    actions
  end

  form do |f|
    f.inputs "Rushee information" do
      f.input :name
      f.input :email
      f.input :hometown
      f.input :major
      f.input :gpa
      f.input :courses_and_grades
      f.input :cut
      f.input :password
    end
    f.actions
  end

end
