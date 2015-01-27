class CreateRusheeComments < ActiveRecord::Migration
  def change
    create_table :rushee_comments do |t|
      t.text :content
      t.references :active, index: true
      t.references :rushee_profile, index: true

      t.timestamps
    end
    add_index :rushee_comments, [:active_id, :created_at]
  end
end
