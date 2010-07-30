class Milestone < ActiveRecord::Base
  has_many :statuses
  belongs_to :milestone_category
end
