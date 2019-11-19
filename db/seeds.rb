# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(name: "Blake", email: "stuffhere@gmail.com", location: "Denver, CO")

Sightings.create(animal: "Elk", location: "Durango, CO", date: "9/12/19", time: "9:10AM" )

