class CreateRushApplications < ActiveRecord::Migration
  def change
    create_table :rush_applications do |t|

      t.timestamps
    end
  end
end
