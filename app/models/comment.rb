class Comment < ActiveRecord::Base
  belongs_to :spot
  attr_accessible :body, :spot_id
  
  validates :body, presence: true
  validates :spot_id, presence: true
end
