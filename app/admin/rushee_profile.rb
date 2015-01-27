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
    id_column
    column :name
    column :photo
    actions
  end

  form do |f|
    f.inputs "Rushee basic information" do
      f.input :name
      f.input :photo
    end
    f.actions
  end

end
