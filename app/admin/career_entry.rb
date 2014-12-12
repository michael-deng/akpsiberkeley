ActiveAdmin.register CareerEntry do


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
    column :company
    column :group
    column :year
    column :location
    column :fulltime
    column :intern
    column :job_category
    actions
  end

  form do |f|
    f.inputs "Career entry information" do
      f.input :name
      f.input :company
      f.input :group
      f.input :year
      f.input :location
      f.input :fulltime
      f.input :intern
      f.input :job_category
    end

    f.actions
  end

end
