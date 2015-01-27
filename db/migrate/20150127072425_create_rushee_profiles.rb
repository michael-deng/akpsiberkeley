class CreateRusheeProfiles < ActiveRecord::Migration
  def change
    create_table :rushee_profiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
