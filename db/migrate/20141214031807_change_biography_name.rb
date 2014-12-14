class ChangeBiographyName < ActiveRecord::Migration
  def change
  	remove_column :actives, :bio, :text
  	add_column :actives, :biography, :text
  end
end
