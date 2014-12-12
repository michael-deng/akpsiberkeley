class AddDisplayToActives < ActiveRecord::Migration
  def change
    add_column :actives, :display, :boolean
  end
end
