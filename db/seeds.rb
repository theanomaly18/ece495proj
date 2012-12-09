# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(title: 'Alien Workshop Apocalypse KTC Deck',
  description:
    %{<p>
	  Apocalypse KTC Series by Alien Workshop. Sizes: 7.75" x 31.6", 
	  8.13" x 31.75", 8" x 32". Imported.
	</p>},
  image_url: 'aws_apoc_ktc_deck.png',
  price: 49.99)
	
Product.create(title: 'Element Flat Rail',
  description:
    %{<p>
	  This durable 6' long, extra wide 4" flat grind rail has three height 
	  settings from 10" to 13". Imported.
	</p>},
  image_url: 'element_flatrail.png',
  price: 119.99)

Product.create(title: 'Thunder Polished Hi Trucks',
  description:
    %{<p>
	  Pro Strike Hi Trucks by Thunder. Sizes: 145 Axle 7.65", 147 Axle 8". 
	  Set of 2 Trucks. Imported.
	</p>},
  image_url: 'thunder_polished_hitrucks.png',
  price: 44.99)
	
Spot.delete_all
Spot.create(title: 'Awesome Loading Dock',
  address: '511 Whiteland Avenue, Downingtown, PA',
  image_url: 'testspot1.png',
  latitude: 40.00562,
  longitude: -75.691336,
  description:
    %{<p>
	  Smooth 10 ft. run to 5 ft. dropoff.
	</p>},
  gmaps: true)
  
Spot.create(title: 'Los Altos Skate Park',
  address: '10140 Lomas Blvd NE, Albuquerque, NM',
  image_url: 'testspot2.png',
  latitude: 35.086984,
  longitude: -106.538512,
  description:
    %{<p>
	  Amazing skatepark with bowls, quarter pipes, stairs, rails, funboxes,
	  and even a small volcanoe.
	</p>},
  gmaps: true)
  
