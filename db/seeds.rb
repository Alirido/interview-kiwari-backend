# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create({
	name: "Sandal Mahal",
	price: 5000000,
	image: "https://anu.com/images/sandal-mahal.jpg"
})

Product.create({
	name: "Baju Mahal",
	price: 8000000,
	image: "https://anu.com/images/baju-mahal.jpg"
})