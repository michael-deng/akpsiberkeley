class AddPlacementToAwards < ActiveRecord::Migration
  def change
  	add_column :awards, :placement, :string
  end
end
