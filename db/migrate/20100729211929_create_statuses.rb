class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :body
      t.integer :location_id
      t.integer :child_id
      t.integer :milestone_id

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
