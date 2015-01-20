# Award settings in activeadmin

ActiveAdmin.register Award do
  permit_params :name, :members, :year

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
    column :placement
    column :members
    column :name
    column :year
    actions
  end

  form do |f|
    f.inputs "Award information" do
      f.input :placement, as: :select, collection: ["1st Place", "2nd Place", "3rd Place", "Finalist"]
      f.input :members
      f.input :name
      f.input :year
    end
    f.actions
  end

end
