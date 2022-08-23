# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Place.destroy_all
User.destroy_all

puts "Destroy database"

cersey = User.create(first_name: "Cersey", last_name: "Lanister", email: "cersey@gold.com", password: "123123")
arthas = User.create(first_name: "Arthas", last_name: "Menethil", email: "arthas@frozen.com", password: "123123")

puts "Create Users"

Place.create(name: "Casterly Rock ", place_type: "Castle", description: " Big and rich castle", price_day: 10_000, user: cersey)
Place.create(name: "Hogwarts ", place_type: "Castle", description:" Big and magic castle", price_day: 9000, user: cersey)
Place.create(name: "Minas Tirith ", place_type: "Castle", description: " Castle in the rocks", price_day: 8000, user: cersey)
Place.create(name: "Ogygia Prison ", place_type: "Prison", description: " Famous Prison, and you can scape", price_day: 5000, user: arthas)
Place.create(name: "House of Black and White ", place_type: "Temple", description: " You can learn a lot there", price_day: 1, user: arthas)
Place.create(name: "Tower of Everfrost ", place_type: "Tower", description: " Very cold place", price_day:5000, user: arthas)
Place.create(name: "Creel House", place_type: "House", description: " Strange house, was the Vecna house", price_day: 3000, user: arthas)

puts "Create Places"
