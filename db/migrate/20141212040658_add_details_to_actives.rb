class AddDetailsToActives < ActiveRecord::Migration
  def change
    add_column :actives, :major, :string
    add_column :actives, :pledge_class, :string
    add_column :actives, :bio, :text
    add_column :actives, :hometown, :string
    add_column :actives, :previous_positions, :string
    add_column :actives, :eboard, :boolean
  end
end
