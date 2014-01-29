# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = []
products << Product.create(name: 'Laser', price: '325.00', description: 'Good for lasering' )
products << Product.create(name: 'Shoe', price: '23.4', description: 'Just the left one' )
products << Product.create(name: 'Wicker Monkey', price: '125.00', description: 'It has a little wicker monkey baby' )
products << Product.create(name: 'Whiteboard', price: '100.0', description: 'Can be written on' )
products << Product.create(name: 'Chalkboard', price: '70.00', description: 'Can be written on.  Smells like education' )
products << Product.create(name: 'Podium', price: '50.00', description: 'All the pieces swivel separately' )
products << Product.create(name: 'Bike', price: '1250.00', description: 'Good for biking from place to place' )
products << Product.create(name: 'Kettle', price: '39.99', description: 'Good for boiling' )
products << Product.create(name: 'Toaster', price: '20.00', description: 'Toasts your enemies!' )
products << Product.create(name: 'Flux Capacitor', price: '1200000.00', description: 'For traveling back to the future' )

categories = []              
categories << Category.create(name: 'Vehicles', description: 'Motor transport')
categories << Category.create(name: 'Clothing and Apparel', description: 'Wearable stuff')
categories << Category.create(name: 'Appliances', description: 'Machines around the house')
categories << Category.create(name: 'Toys and Games', description: 'Fun-time play things!')
categories << Category.create(name: 'Tools and Garden', description: 'For yard work and home improvement')
categories << Category.create(name: 'Computers and Electronics', description: 'Nerd equipment')
categories << Category.create(name: 'Books', description: 'For edumucation and getting learn on')
categories << Category.create(name: 'Health and Fitness', description: 'Getting thin and pretty')
categories << Category.create(name: 'Movies', description: 'Leisure time activities')
categories << Category.create(name: 'Sports and Outdoors', description: 'Working up a sweat')

products[0].categories << categories[-1]
products[0].categories << categories[-3]
products[0].categories << categories[-5]

products[1].categories << categories[-7]
products[1].categories << categories[-5]

products[2].categories << categories[-6]
products[2].categories << categories[-7]

products[3].categories << categories[-2]
products[3].categories << categories[-4]
products[3].categories << categories[-6]

products[4].categories << categories[-10]
products[4].categories << categories[-9]
products[4].categories << categories[-8]
products[4].categories << categories[-7]

products[5].categories << categories[-1]

products[6].categories << categories[-2]
products[6].categories << categories[-3]
products[6].categories << categories[-4]

products[7].categories << categories[-5]
products[7].categories << categories[-6]

products[8].categories << categories[-1]

products[9].categories << categories[-10]
products[9].categories << categories[-8]
products[9].categories << categories[-6]









