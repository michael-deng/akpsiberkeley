ActiveAdmin.register RusheeProfile do

  permit_params :name, :photo

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
    selectable_column
    column :name
    actions
  end

  form do |f|
    f.inputs "Rushee Information" do
      f.input :name
      f.input :photo
    end
    f.actions
  end
end
