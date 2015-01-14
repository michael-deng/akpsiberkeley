# Active settings in activeadmin

ActiveAdmin.register Active do
  permit_params :name, :email, :major, :pledge_class, :hometown, :linkedin, :previous_positions, :eboard_position, :display, :biography, :photo, :password

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
    column :email
    column :major
    column :hometown
    column :eboard_position
    column :previous_positions
    column :pledge_class
    column :linkedin
    column :display
    actions
  end

  # Form for 
  form do |f|
    f.inputs "Active information" do
      f.input :name
      f.input :email
      f.input :major
      f.input :hometown
      f.input :eboard_position
      f.input :previous_positions
      f.input :pledge_class
      f.input :linkedin
      f.input :display
      f.input :biography
      f.input :password
      f.input :photo
    end
    f.actions
  end

end
