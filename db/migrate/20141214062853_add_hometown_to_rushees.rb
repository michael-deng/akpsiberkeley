class AddHometownToRushees < ActiveRecord::Migration
  def change
  	add_column :rushees, :hometown, :string
  end
end
