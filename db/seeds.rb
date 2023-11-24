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
Review.destroy_all

Booking.destroy_all
Console.destroy_all
User.destroy_all
puts 'Creating users...'
# oscar = User.create!(first_name: "Oscar", last_name: "Dupond", password: "1111", email: "oscar@gmail.com")
oscar = User.create!(password: "111111", email: "oscar@gmail.com")
# guillaume = User.create!(first_name: "Guillaume", last_name: "Dupuis", password: "2222", email: "guillaume@gmail.com")
guillaume = User.create!(password: "111111", email: "guillaume@gmail.com")
# thomas = User.create!(first_name: "Thomas", last_name: "Dubois", password: "3333", email: "thomas@gmail.com")
thomas = User.create!(password: "111111", email: "thomas@gmail.com")

nicolas = User.create!(password: "111111", email: "nicolas@gmail.com")

jennifer = User.create!(password: "111111", email: "jennifer@gmail.com")

noemie = User.create!(password: "111111", email: "noemie@gmail.com")

jessica = User.create!(password: "111111", email: "jessica@gmail.com")

bruno = User.create!(password: "111111", email: "bruno@gmail.com")

laura = User.create!(password: "111111", email: "laura@gmail.com")

jordan = User.create!(password: "111111", email: "jordan@gmail.com")

victor = User.create!(password: "111111", email: "victor@gmail.com")

brice = User.create!(password: "111111", email: "brice@gmail.com")

max = User.create!(password: "111111", email: "max@gmail.com")

ivan = User.create!(password: "111111", email: "ivan@gmail.com")

ruan = User.create!(password: "111111", email: "ruan@gmail.com")

quentin = User.create!(password: "111111", email: "quentin@gmail.com")

justin = User.create!(password: "111111", email: "justin@gmail.com")

peter = User.create!(password: "111111", email: "peter@gmail.com")

adam = User.create!(password: "111111", email: "adam@gmail.com")

eve = User.create!(password: "111111", email: "eve@gmail.com")

mickael = User.create!(password: "111111", email: "mickael@gmail.com")

josé = User.create!(password: "111111", email: "josé@gmail.com")

rose = User.create!(password: "111111", email: "rose@gmail.com")

sasha = User.create!(password: "111111", email: "sasha@gmail.com")

dimitri = User.create!(password: "111111", email: "dimitri@gmail.com")

yves = User.create!(password: "111111", email: "yves@gmail.com")

simon = User.create!(password: "111111", email: "simon@gmail.com")

pierre = User.create!(password: "111111", email: "pierre@gmail.com")
puts 'Creating consoles...'


console_data = [
  { name: "PS5", brand: "PlayStation", user: yves, price: "4€", adress:"19 rue de la barre 59800 Lille", image: "https://assets-prd.ignimgs.com/2020/06/12/playstation-5-button-02-1591933908407.jpg" },
  { name: "PS4", brand: "PlayStation", user: yves, price: "4€", adress:"Place de Saintignon, 165 Av. de Bretagne, 59000 Lille", image: "https://static-ssl.businessinsider.com/image/568c0d79dd0895eb398b47df-5850-2880/ps4.jpg" },
  { name: "PS3", brand: "PlayStation", user: dimitri, price: "3€", adress:"108 Rue Turgot, 59000 Lille", image: "http://www.tunisianet.com.tn/img/p/1/7/2/4/4/17244.jpg" },
  { name: "PS2", brand: "PlayStation", user: sasha, price: "2€", adress:"Pl. de la Gare, 59110 La Madeleine", image: "http://www.sat-elitegames.com/wp-content/uploads/2014/05/PS2.jpg" },
  { name: "PS1", brand: "PlayStation", user: rose, price: "1€", adress:"112 Rue Sadi Carnot, 59280 Armentières", image: "https://assets.vg247.com/current/2015/09/playstation_one_original.jpg" },
  { name: "PSP", brand: "PlayStation", user: josé, price: "2€", adress:"19 rue de la république 59184 Sainghin-en-Weppes", image: "http://upload.wikimedia.org/wikipedia/commons/3/3d/PSP-2000.jpg" },
  { name: "PS Vita", brand: "PlayStation", user: mickael, price: "2€", adress:"Rue du 11 Novembre, 62138 Violaines", image: "https://www.gameconsoledojo.com/wp-content/uploads/2018/03/1920px-PlayStation-Vita-1101-FL.jpg" },
  { name: "Xbox Series X", brand: "Microsoft", user: thomas, price: "5€", adress:"99 Rue Paul Bert, 62300 Lens", image: "https://cdn1.smartprix.com/rx-iakBq55Vm-w1200-h1200/microsoft-xbox-serie.jpg" },
  { name: "Xbox", brand: "Microsoft", user: eve, price: "5€", adress:"630 Av. Jules César Zone Actiparc, 62223 Saint-Laurent-Blangy", image: "https://pngimg.com/uploads/xbox/xbox_PNG17520.png" },
  { name: "Xbox 360", brand: "Microsoft", user: adam, price: "5€", adress:"42 rue de Wambrechies 59520 Marquette-lez-Lille", image: "https://upload.wikimedia.org/wikipedia/commons/3/37/Xbox-360-Elite-wController.jpg" },
  { name: "Xbox One", brand: "Microsoft", user: peter, price: "5€", adress:"31 chemin de la planche au riez, 59290 Wasquehal", image: "https://i5.walmartimages.com/asr/8f270281-dddd-41be-915d-6ab728e6bd9c_1.108ebc39646ceee098ee90a8edb33042.jpeg" },
  { name: "Wii U", brand: "Nintendo", user: quentin, price: "5€", adress:"3 rue de canteleu 59000 Lille", image: "https://wallup.net/wp-content/uploads/2019/09/392799-wii-u-nintendo-system-videogame-video-game-wii.jpg" },
  { name: "Gameboy", brand: "Nintendo", user: ruan, price: "5€", adress:"1 Rue du Château d'Isenghien, 59160 Lille", image: "https://images.launchbox-app.com/Platforms/6df33ae4-8087-4db1-9f7b-965ddcba11de.png" },
  { name: "Gameboy Color", brand: "Nintendo", user: ivan, price: "5€", adress:"60 Bd Vauban, 59800 Lille", image: "https://images-na.ssl-images-amazon.com/images/I/61vi4-7L0qL._AC_SL1500_.jpg" },
  { name: "Gameboy Advance", brand: "Nintendo", user: max, price: "5€", adress:"4 Avenue Frizac 31400 Toulouse", image: "https://www.fun-academy.fr/wp-content/uploads/2021/03/129756_5a223bb9-37ca-49d6-86ac-82f25e444776.jpg" },
  { name: "Gameboy Advance SP", brand: "Nintendo", user: brice, price: "5€", adress:"5 Rue Curial, 75019 Paris", image: "http://upload.wikimedia.org/wikipedia/commons/2/2d/Gameboy-Advance-SP-Mk2.jpg" },
  { name: "Gamecube", brand: "Nintendo", user: victor, price: "5€", adress:"Pl. Amélie Raba Léon, 33000 Bordeaux", image: "https://www.mariowiki.com/images/thumb/8/80/Nintendo_GameCube_console.png/1200px-Nintendo_GameCube_console.png" },
  { name: "Super Nintendo", brand: "Nintendo", user: jordan, price: "5€", adress:"130 Bd des Talards, 35400 Saint-Malo", image: "http://www.classicgaming.biz/wp-content/uploads/2017/07/SNES-Big.png" },
  { name: "Nintendo DS", brand: "Nintendo", user: laura, price: "5€", adress:"Boulevard Rousseau, Aéroport de Dinard - Bt 20, 35801 Dinard", image: "http://upload.wikimedia.org/wikipedia/commons/5/56/Nintendo-DS-Lite-Black-Open.png" },
  { name: "Nintendo 64", brand: "Nintendo", user: bruno, price: "5€", adress:"2 All. Louise Michel, 29000 Quimper", image: "http://upload.wikimedia.org/wikipedia/commons/0/02/N64-Console-Set.png" },
  { name: "Saturn", brand: "SEGA", user: pierre, price: "5€", adress:"3 Rue Vannetaise, 44350 Guérande", image: "http://oyster.ignimgs.com/mediawiki/apis.ign.com/history-of-video-game-consoles/5/58/Sega-saturn-console.jpg" },
  { name: "Mega Drive", brand: "SEGA", user: jessica, price: "5€", adress:"All. des Marronniers, 46800 Montcuq-en-Quercy-Blanc", image: "https://asset.conrad.com/media10/isa/160267/c1/-/en/1602624_RB_00_FB/image.jpg" },
  { name: "Master System", brand: "SEGA", user: jennifer, price: "5€", adress:"Rue de l'Oradou 300, 63000 Clermont-Ferrand", image: "https://segaretro.org/images/0/0f/MasterSystem1.jpg" },
  { name: "Atari 2600", brand: "Atari", user: nicolas, price: "5€", adress:"279 Av. de La Châtre, 36000 Châteauroux", image: "http://upload.wikimedia.org/wikipedia/commons/d/de/Atari-2600-Console.jpg" },
  { name: "Steam Desk", brand: "Steam", user: noemie, price: "5€", adress:"76 Rue Marius Berliet, 69000 Lyon", image: "https://knowthisapp.com/wp-content/uploads/2021/08/everything-you-need-to-know-about-steam-deck.jpg" },
  { name: "Wii", brand: "Nintendo", user: oscar, price: "5€", adress:"17 bis Rue de la Gare, 74000 Annecy", image: "http://upload.wikimedia.org/wikipedia/commons/1/14/Wii-console.jpg" }
]

console_data.each do |data|
  image = URI.open(data[:image])
  console = Console.create!(
    name: data[:name],
    brand: data[:brand],
    user: data[:user],
    price: data[:price],
    address: data[:adress]
  )
  console.photo.attach(io: image, filename: data[:image], content_type: "#{File.extname(data[:image])}")
end

puts 'Creating bookings...'

booking1 = Booking.create!(user: oscar, console: Console.first, date_begin: Date.today + 3, date_end: Date.today + 4)
booking2 = Booking.create!(user: oscar, console: Console.first, date_begin: Date.today + 5, date_end: Date.today + 10)
booking3 = Booking.create!(user: oscar, console: Console.last, date_begin: Date.today, date_end: Date.today + 1)
booking4 = Booking.create!(user: thomas, console: Console.last, date_begin: Date.today + 10, date_end: Date.today + 20)
booking5 = Booking.create!(user: thomas, console: Console.last, date_begin: Date.today + 30, date_end: Date.today + 34)

puts 'Creating reviews...'
review1 = Review.create!(user: oscar, console: Console.first, rating: 5, comment: "Super console, je recommande !")
review2 = Review.create!(user: thomas, console: Console.last, rating: 4, comment: "Console en bon état, je recommande !")
review3 = Review.create!(user: oscar, console: Console.first, rating: 5, comment: "Super console, je recommande !")
review4 = Review.create!(user: thomas, console: Console.last, rating: 4, comment: "Console en bon état, je recommande !")
review5 = Review.create!(user: thomas, console: Console.last, rating: 4, comment: "Console en bon état, je recommande !")

puts 'Finished!'
