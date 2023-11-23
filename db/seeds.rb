# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"
=======
Review.destroy_all

Booking.destroy_all
Console.destroy_all
User.destroy_all
puts 'Creating users...'
# oscar = User.create!(first_name: "Oscar", last_name: "Dupond", password: "1111", email: "oscar@gmail.com")
oscar = User.create!(password: "111111", email: "oscar@gmail.com")
#guillaume = User.create!(first_name: "Guillaume", last_name: "Dupuis", password: "2222", email: "guillaume@gmail.com")
guillaume = User.create!(password: "111111", email: "guillaume@gmail.com")
#thomas = User.create!(first_name: "Thomas", last_name: "Dubois", password: "3333", email: "thomas@gmail.com")
thomas = User.create!(password: "111111", email: "thomas@gmail.com")

puts 'Creating consoles...'


image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps5.jpg")
ps5 = Console.create(name: "PS5", brand: "PlayStation", user: guillaume, price: "50€")
ps5.photo.attach(io: image, filename: "ps5.jpg", content_type: "image/jpg")


image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps4.jpg")
ps4 = Console.create(name: "PS4", brand: "PlayStation", user: guillaume, price: "40€")
ps4.photo.attach(io: image, filename: "ps4.jpg", content_type: "image/jpg")


image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps3.jpg")
ps3 = Console.create(name: "PS3", brand: "PlayStation", user: guillaume, price: "30€")
ps3.photo.attach(io: image, filename: "ps3.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps2.jpg")
ps2 = Console.create(name: "PS2", brand: "PlayStation", user: guillaume, price: "20€")
ps2.photo.attach(io: image, filename: "ps2.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps1.jpg")
ps1 = Console.create(name: "PS1", brand: "PlayStation", user: guillaume, price: "10€")
ps1.photo.attach(io: image, filename: "ps1.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/psp.jpg")
psp = Console.create(name: "PSP", brand: "PlayStation", user: guillaume, price: "25€")
psp.photo.attach(io: image, filename: "psp.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/ps_vita.jpg")
ps_vita = Console.create(name: "PS vita", brand: "PlayStation", user: guillaume, price: "25€")
ps_vita.photo.attach(io: image, filename: "ps_vita.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/xbox_serie_x.jpg")
xbox_serie_x = Console.create(name: "Xbox serie x", brand: "Microsoft", user: thomas, price: "50€")
xbox_serie_x.photo.attach(io: image, filename: "xbox_serie_x.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/xbox.png")
xbox = Console.create(name: "Xbox", brand: "Microsoft", user: thomas, price: "50€")
xbox.photo.attach(io: image, filename: "xbox.png", content_type: "image/png")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/xbox_360.jpg")
xbox_360 = Console.create(name: "Xbox 360", brand: "Microsoft", user: thomas, price: "50€")
xbox_360.photo.attach(io: image, filename: "xbox_360.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/xbox_one.jpg")
xbox_one = Console.create(name: "Xbox one", brand: "Microsoft", user: thomas, price: "50€")
xbox_one.photo.attach(io: image, filename: "xbox_one.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/nintendo_switch.jpg")
switch = Console.create(name: "Switch", brand: "Nintendo", user: oscar, price: "50€")
switch.photo.attach(io: image, filename: "nintendo_switch.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/wii.jpg")
wii = Console.create(name: "Wii", brand: "Nintendo", user: oscar, price: "50€")
wii.photo.attach(io: image, filename: "wii.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/wii_u.jpg")
wii_u = Console.create(name: "Wii U", brand: "Nintendo", user: oscar, price: "50€")
wii_u.photo.attach(io: image, filename: "wii_u.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/gameboy.png")
gameboy = Console.create(name: "Gameboy", brand: "Nintendo", user: oscar, price: "50€")
gameboy.photo.attach(io: image, filename: "gameboy.png", content_type: "image/png")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/gameboy_color.jpg")
gameboy_color = Console.create(name: "Gameboy Color", brand: "Nintendo", user: oscar, price: "50€")
gameboy_color.photo.attach(io: image, filename: "gameboy_color.png", content_type: "image/png")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/gameboy_advance.jpg")
gameboy_advense = Console.create(name: "Gameboy Advense", brand: "Nintendo", user: oscar, price: "50€")
gameboy_advense.photo.attach(io: image, filename: "gameboy_advense.png", content_type: "image/png")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/gameboy_advance_sp.jpg")
gameboy_advense_sp = Console.create(name: "Gameboy Advense Sp", brand: "Nintendo", user: oscar, price: "50€")
gameboy_advense_sp.photo.attach(io: image, filename: "gameboy_advense_sp.png", content_type: "image/png")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/gamecube.jpg")
gamecube = Console.create(name: "Gamecube", brand: "Nintendo", user: oscar, price: "50€")
gamecube.photo.attach(io: image, filename: "gamecube.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/super_nintendo.png")
super_nintendo = Console.create(name: "Super Nintendo", brand: "Nintendo", user: oscar, price: "50€")
super_nintendo.photo.attach(io: image, filename: "super_nintendo.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/nintendo_ds.jpg")
nintendo_ds = Console.create(name: "Nintendo Ds", brand: "Nintendo", user: oscar, price: "50€")
nintendo_ds.photo.attach(io: image, filename: "nintendo_ds.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/nintendo_64.jpg")
nintendo_64 = Console.create(name: "Nintendo 64", brand: "Nintendo", user: oscar, price: "50€")
nintendo_64.photo.attach(io: image, filename: "nintendo_64.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/saturn.JPG")
saturn = Console.create(name: "Saturn", brand: "SEGA", user: thomas, price: "50€")
saturn.photo.attach(io: image, filename: "saturn.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/sega_mega_drive.jpg")
mega_drive = Console.create(name: "Mega drive", brand: "SEGA", user: guillaume, price: "50€")
mega_drive.photo.attach(io: image, filename: "sega_mega_drive.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/master_system.jpg")
master_system = Console.create(name: "Master system", brand: "SEGA", user: guillaume, price: "50€")
master_system.photo.attach(io: image, filename: "master_system.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/atari_2600.jpg")
atari_2600 = Console.create(name: "Atari 2600", brand: "Atari", user: guillaume, price: "50€")
atari_2600.photo.attach(io: image, filename: "atari_2600.jpg", content_type: "image/jpg")

image = URI.open("/home/cybertake/code/oscar/loconsole/app/assets/images/steam_desk.jpg")
steam_desk = Console.create(name: "Steam Desk", brand: "Steam", user: guillaume, price: "50€")
steam_desk.photo.attach(io: image, filename: "steam_desk.jpg", content_type: "image/jpg")

puts 'Creating bookings...'

booking1 = Booking.create!(user: thomas, console: ps5, date_begin: Date.today + 3, date_end: Date.today + 4)
booking2 = Booking.create!(user: thomas, console: ps5, date_begin: Date.today + 5, date_end: Date.today + 10)
# booking3 = Booking.create!(user: oscar, console: switch, date_begin: Date.today, end_date: Date.today + 1)
# booking4 = Booking.create!(user: guillaume, console: saturn, date_begin: Date.today + 10, end_date: Date.today + 20)
# booking5 = Booking.create!(user: thomas, console: wii, date_begin: Date.today + 30, end_date: Date.today + 34)

puts 'Creating reviews...'
review1 = Review.create!(booking: booking1, rating: 5, comment: "Super console, je recommande !")
review2 = Review.create!(booking: booking2, rating: 4, comment: "Console en bon état, je recommande !")
# review3 = Review.create!(booking: booking3, rating: 3, content: "Console en bon état, je recommande !")
# review4 = Review.create!(booking: booking4, rating: 2, content: "Console en bon état, je recommande !")
# review5 = Review.create!(booking: booking5, rating: 1, content: "Console en bon état, je recommande !")
puts 'Finished!'

