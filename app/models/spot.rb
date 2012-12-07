class Spot < ActiveRecord::Base

  has_many :comments
  attr_accessible :address, :description, :image_url, :latitude, :longitude, :title, :gmaps
  
  acts_as_gmappable

  receives_stars

  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true

  def gmaps4rails_address
      self.address
  end

  def gmaps4rails_infowindow
      "<h1>#{title}</h1>  <th>#{description}</th>  <img src='#{image_url}' />"
  end
  
  def gmaps4rails_sidebar
     title
  end
   

end
