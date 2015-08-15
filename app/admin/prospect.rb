ActiveAdmin.register Prospect do

	permit_params :email

	index do
    selectable_column
    column :email
    actions
  end

  form do |f|
    f.inputs "Prospective Rushee Information" do
      f.input :email
    end
    f.actions
  end
end
