# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Place.destroy_all
User.destroy_all

puts "Destroy database"

cersei = User.create(first_name: "Cersei", last_name: "Lanister", email: "cersei@gold.com", password: "123123")
cersei.photo.attach(io: File.open("app/assets/images/cersei.jpg"), filename: "cersei.jpg", content_type: "image/jpg")

arthas = User.create(first_name: "Arthas", last_name: "Menethil", email: "arthas@frozen.com", password: "123123")
arthas.photo.attach(io: File.open("app/assets/images/arthas.jpg"), filename: "arthas.jpg", content_type: "image/jpg")

puts "Create Users"

place1 = Place.create(name: "Casterly Rock ", place_type: "Castle", description: " Big and rich castle", price_day: 10_000, user: cersei)
place1.photo.attach(io: File.open("app/assets/images/rockcastle.jpg"), filename: "rockcastle.jpg", content_type: "image/jpg")

place2 = Place.create(name: "Hogwarts ", place_type: "Castle", description:" Big and magic castle", price_day: 9000, user: cersei)
place2.photo.attach(io: File.open("app/assets/images/hogwarts.png"), filename: "hogwarts.png", content_type: "image/jpg")

place3 = Place.create(name: "Minas Tirith ", place_type: "Castle", description: " Castle in the rocks", price_day: 8000, user: cersei)
place3.photo.attach(io: File.open("app/assets/images/minas.jpg"), filename: "minas.jpg", content_type: "image/jpg")

place4 = Place.create(name: "Ogygia Prison ", place_type: "Prison", description: " Famous Prison, and you can scape", price_day: 5000, user: arthas)
place4.photo.attach(io: File.open("app/assets/images/prison.jpg"), filename: "prison.jpg", content_type: "image/jpg")

place5 = Place.create(name: "House of Black and White ", place_type: "Temple", description: " You can learn a lot there", price_day: 1, user: arthas)
place5.photo.attach(io: File.open("app/assets/images/blackandwhite.jpg"), filename: "blackandwhite.jpg", content_type: "image/jpg")

place6 = Place.create(name: "Tower of Everfrost ", place_type: "Tower", description: " Very cold place", price_day:5000, user: arthas)
place6.photo.attach(io: File.open("app/assets/images/towerofeverfrost.jpg"), filename: "towerofeverfrost.jpg", content_type: "image/jpg")

place7 = Place.create(name: "Creel House", place_type: "House", description: " Strange house, was the Vecna house", price_day: 3000, user: arthas)
place7.photo.attach(io: File.open("app/assets/images/creelhouse.jpg"), filename: "creelhouse.jpg", content_type: "image/jpg")

puts "Create Places"
