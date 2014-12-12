ActiveAdmin.register Active do


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
    column :id
    column :name
    column :email
    column :major
    column :pledge_class
    column :hometown
    column :linkedin
    column :previous_positions
    column :eboard
    column :display
    actions
  end

  form do |f|
    f.inputs "Active information" do
      f.input :id
      f.input :name
      f.input :email
      f.input :major
      f.input :pledge_class
      f.input :hometown
      f.input :linkedin
      f.input :previous_positions
      f.input :eboard
      f.input :display
      f.input :bio
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end


end
