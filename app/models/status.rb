class Status < ActiveRecord::Base
  belongs_to :location
  belongs_to :child
  belongs_to :milestone
  
  default_scope :order => 'created_at DESC'
end
