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
      "<h1>#{title}</h1> <h4><u>Address:</u> #{address}</h4> <br></br> <th><u><b>Description:</b></u> #{description}</th> <br></br> <img src='#{image_url}' width='150' height='150'> "
  end
  
  def gmaps4rails_sidebar
     "  <th colspan='2'> <img src='#{image_url}' width='100' height='100' /> <td> #{title}</td> <br></br> </th> "
  end

end
