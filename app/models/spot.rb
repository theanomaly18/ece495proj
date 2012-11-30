class Spot < ActiveRecord::Base
  has_many :comments
  attr_accessible :address, :description, :image_url, :latitude, :longitude, :title
  
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
