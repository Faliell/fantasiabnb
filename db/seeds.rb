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

shrek = User.create(first_name: "Shrek", last_name: "Oger", email: "shrek@oger.com", password: "123123")
shrek.photo.attach(io: File.open("app/assets/images/shrek.jpg"), filename: "shrek.jpg", content_type: "image/jpg")

batman = User.create(first_name: "Batman", last_name: "", email: "batman@gotham.com", password: "123123")
batman.photo.attach(io: File.open("app/assets/images/batman.jpg"), filename: "batman.jpg", content_type: "image/jpg")



puts "Create Users"

place1 = Place.create(name: "Casterly Rock ", place_type: "Castle", description: " Big and rich castle", price_day: 10_000, user: cersei)
place1.photo.attach(io: File.open("app/assets/images/rockcastle.jpg"), filename: "rockcastle.jpg", content_type: "image/jpg")

place2 = Place.create(name: "Hogwarts ", place_type: "Castle", description:" Big and magic castle with many hidden secrets and a minor possibility of being attacked by dark forces.", price_day: 9000, user: cersei, rating: 3)
place2.photo.attach(io: File.open("app/assets/images/hogwarts.png"), filename: "hogwarts.png", content_type: "image/jpg")

place3 = Place.create(name: "Minas Tirith ", place_type: "Castle", description: " Castle in the rocks", price_day: 8000, user: cersei, rating: 2)
place3.photo.attach(io: File.open("app/assets/images/minas.jpg"), filename: "minas.jpg", content_type: "image/jpg")

place4 = Place.create(name: "Ogygia Prison ", place_type: "Prison", description: " Famous Prison, and you can escape. Free access to the gym.", price_day: 5000, user: arthas, rating: 3)
place4.photo.attach(io: File.open("app/assets/images/prison.jpg"), filename: "prison.jpg", content_type: "image/jpg")

place5 = Place.create(name: "House of Black and White ", place_type: "Temple", description: " You can learn a lot here! Professional assasin workshops available.", price_day: 1, user: arthas, rating: 2)
place5.photo.attach(io: File.open("app/assets/images/blackandwhite.jpg"), filename: "blackandwhite.jpg", content_type: "image/jpg")

place6 = Place.create(name: "Tower of Everfrost ", place_type: "Tower", description: " Very cold place", price_day:5000, user: arthas, rating: 4)
place6.photo.attach(io: File.open("app/assets/images/towerofeverfrost.jpg"), filename: "towerofeverfrost.jpg", content_type: "image/jpg")

place7 = Place.create(name: "Creel House", place_type: "House", description: " Strange house, was the Vecna house", price_day: 3000, user: arthas, rating: 4)
place7.photo.attach(io: File.open("app/assets/images/creelhouse.jpg"), filename: "creelhouse.jpg", content_type: "image/jpg")

place8 = Place.create(name: "Swamp House", place_type: "House", description: " Come and get your swamp on!",
price_day: 400, user: cersei, rating: 5)
place8.photo.attach(io: File.open("app/assets/images/Swamphouse.jpg"), filename: "Swamphouse.jpg", content_type: "image/jpg")

place9 = Place.create(name: "Bat Cave", place_type: "Cave", description: " Cave of the legendary Bruce Wayne.",
price_day: 3000, user: cersei, rating: 4)
place9.photo.attach(io: File.open("app/assets/images/batcave.jpg"), filename: "batcave.jpg", content_type: "image/jpg")

place10 = Place.create(name: "Dracula Castle", place_type: "Castle", description: " Come and get your b**** sucked!",
price_day: 9000, user: cersei, rating: 4)
place10.photo.attach(io: File.open("app/assets/images/brancastle.jpg"), filename: "brancastle.jpg", content_type: "image/jpg")

place11 = Place.create(name: "Death Star", place_type: "Planet", description: " Welcome to the Dark Side",
price_day: 2999, user: arthas, rating: 2)
place11.photo.attach(io: File.open("app/assets/images/deathstar.jpg"), filename: "deathstar.jpg", content_type: "image/jpg")

place12 = Place.create(name: "Wakanda", place_type: "City", description: " Wakanda Forever!",
price_day: 1000000, user: arthas, rating: 5)
place12.photo.attach(io: File.open("app/assets/images/wakanda.jpg"), filename: "wakanda.jpg", content_type: "image/jpg")

place13 = Place.create(name: "Pirates of The Caribbean Ship", place_type: "Ship", description: " Spend some time with Captain Jack Sparrow.",
price_day: 4000, user: arthas, rating: 4)
place13.photo.attach(io: File.open("app/assets/images/pirates.jpg"), filename: "pirates.jpg", content_type: "image/jpg")

place14 = Place.create(name: "X-Mansion", place_type: "House", description: " The mansion of Charles Xavier. If you're lucky you might meet Wolverine!",
price_day: 3000, user: cersei, rating: 4)
place14.photo.attach(io: File.open("app/assets/images/x-mansion.jpg"), filename: "x-mansion.jpg", content_type: "image/jpg")

place16 = Place.create(name: "Flinstones House", place_type: "House", description: " Jabadabadoo",
price_day: 1799, user: arthas, rating: 3)
place16.photo.attach(io: File.open("app/assets/images/flinstones.jpg"), filename: "flinstones.jpg", content_type: "image/jpg")

place17 = Place.create(name: "Walking Dead Jail", place_type: "Jail", description: " For thrillseekers only!",
price_day: 6999, user: arthas, rating: 5)
place17.photo.attach(io: File.open("app/assets/images/walkingdead.jpg"), filename: "walkingdead.jpg", content_type: "image/jpg")

place18 = Place.create(name: "Up House", place_type: "House", description: " For a cozy stay with your loved ones. Balloons for takeoff included!",
price_day: 4999, user: cersei, rating: 2)
place18.photo.attach(io: File.open("app/assets/images/Up-House.jpg"), filename: "Up-House.jpg", content_type: "image/jpg")

place19 = Place.create(name: "The Shire", place_type: "House", description: " Peacefull place with a lot of small people around",
price_day: 6999, user: cersei, rating: 2)
place19.photo.attach(io: File.open("app/assets/images/shire.jpg"), filename: "shire.jpg", content_type: "image/jpg")


puts "Create Places"
