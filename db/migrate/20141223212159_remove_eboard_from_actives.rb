class RemoveEboardFromActives < ActiveRecord::Migration
  def change
  	remove_column :actives, :eboard, :boolean
  	add_column :actives, :eboard_position, :string
  end
end
