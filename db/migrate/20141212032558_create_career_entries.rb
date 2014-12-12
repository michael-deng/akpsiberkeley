class CreateCareerEntries < ActiveRecord::Migration
  def change
    create_table :career_entries do |t|
      t.string :name
      t.string :company
      t.string :group
      t.integer :year
      t.string :location
      t.boolean :fulltime
      t.boolean :intern
      t.string :job_category
      t.integer :active_id

      t.timestamps
    end
  end
end
