# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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

ps5 = Console.create!(name: "PS5", brand: "PlayStation", user: guillaume, price: "50€", address: "31 chemin de planche au riez, 59290 Wasquehal")

xbox_serie_x = Console.create!(name: "Xbox Serie x", brand: "Microsoft", user: thomas, price: "50€", address: "139 boulevard de la liberté, 59000 Lille")

switch = Console.create!(name: "Switch", brand: "Nintendo", user: oscar, price: "50€", address: "19 rue de la barre, 59000 Lille")

saturn = Console.create!(name: "Saturn", brand: "SEGA", user: thomas, price: "25€", address: "139 boulevard de la liberté, 59000 Lille")

wii = Console.create!(name: "Wii", brand: "Nintendo", user: oscar, price: "25€", address: "19 rue de la barre, 59000 Lille")

mega_drive = Console.create!(name: "Mega drive", brand: "SEGA", user: guillaume, price: "25€", address: "31 chemin de planche au riez, 59290 Wasquehal")

gameboy = Console.create!(name: "GameBoy", brand: "Nintendo", user: oscar, price: "25€", address: "19 rue de la barre, 59000 Lille")
puts 'Finished!'
