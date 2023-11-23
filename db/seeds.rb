# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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

ps5 = Console.create!(name: "PS5", brand: "PlayStation", user: guillaume, price: "5€")

xbox_serie_x = Console.create!(name: "Xbox Serie x", brand: "Microsoft", user: thomas, price: "50€")

switch = Console.create!(name: "Switch", brand: "Nintendo", user: oscar, price: "7€")

saturn = Console.create!(name: "Saturn", brand: "SEGA", user: thomas, price: "9€")

wii = Console.create!(name: "Wii", brand: "Nintendo", user: oscar, price: "4€")

mega_drive = Console.create!(name: "Mega drive", brand: "SEGA", user: guillaume, price: "8€")

gameboy = Console.create!(name: "GameBoy", brand: "Nintendo", user: oscar, price: "6€")

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
