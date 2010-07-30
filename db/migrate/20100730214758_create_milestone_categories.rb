class CreateMilestoneCategories < ActiveRecord::Migration
  def self.up
    create_table :milestone_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :milestone_categories
  end
end
