# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sauropsids = Sauropsid.create([{ name: "Buddy", order: "pterosaur", species: "Quetzalcoatlus northropi", age: 2, location: "Brewster County, Texas", wingspan: 34.5, weight: 491}, { name: "L'il Scratch", order: "pterosaur", species: "Pteranodon longiceps", age: 3, location: "Devil's Tower National Monument, Wyoming", wingspan: 17.65, weight: 80}, { name: "Ghost", order: "ichthyosaur", species: "Shonisaurus popularis", age: 1, location: "Berlin, Nevada", length: 48.6}])