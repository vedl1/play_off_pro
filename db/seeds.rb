# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Competition.destroy_all
Game.destroy_all
User.destroy_all

User.create!(
  email: "minankahai@gmail.com",
  password: "123456",
  first_name: "minan",
  gamer_tag: "minkah"
)

User.create!(
  email: "gerald@gmail.com",
  password: "123456",
  first_name: "gerald",
  gamer_tag: "gerald14k"
  )

  User.create!(
    email: "vedluhana1@gmail.com",
    password: "123456",
    first_name: "ved",
    gamer_tag: "vedl1"
    )

Game.create!(
  platform: "PC",
  title: "FIFA",
  image_url: "https://imageio.forbes.com/specials-images/imageserve/653c020c4d25984193efa626/FC24/0x0.jpg?format=jpg&crop=1400,786,x0,y0,safe&width=960"
)

Game.create!(
  platform: "PC",
  title: "Tekken",
  image_url: "https://i.ytimg.com/vi/bA49WgGOKp4/maxresdefault.jpg"
)

Game.create!(
  platform: "Mobile",
  title: "Call Of Duty",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzmHy9be-yhaZjjyuXjd5xKQB9Ff4GHizq_4obgpWm4umX3wt9Dtm3rQ0DL7EOPyyjak&usqp=CAU"
)

Game.create!(
  platform: "Playstation",
  title: "UFC",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxIvoOCHawPIC1KNCpuKSVJ1nWaupJs8-6ZPVJ3Q9h_nxDi3Odcjt-XaasxLhdhTXW6Gw&usqp=CAU"
)


Game.create!(
  platform: "PC",
  title: "Call Of Duty Warzone",
  image_url: " "
)

Game.create!(
  platform: "Playstation",
  title: "Call Of Duty Modern Warfare 3",
  image_url: " "
)

Game.create!(
  platform: "PC",
  title: "Call Of Duty Warzone",
  image_url: " "
)

Game.create!(
  platform: "Xbox",
  title: "WWE",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVmKCFQutgE4gvPnX_SHUFKTGRmjS_upx1mZK29dffaHZoHznCGZvo4BuqoDFMQGAuU2E&usqp=CAU"
)


Game.create!(
  platform: "Playstation",
  title: "Fortnite",
  image_url: " "
)

Game.create!(
  platform: "Xbox",
  title: "Apex Legends",
  image_url: " "
)

Game.create!(
  platform: "PC",
  title: "Minecraft",
  image_url: " "
)

Game.create!(
  platform: "Mobile",
  title: "Mario Kart",
  image_url: " "
)

Game.create!(
  platform: "PC",
  title: "Rocket league",
  image_url: " "
)

Game.create!(
  platform: "Xbox",
  title: "Xdefiant",
  image_url: " "
)

Game.create!(
  platform: "Playstation",
  title: "Valorant",
  image_url: " "
)

Game.create!(
  platform: "Xbox",
  title: "NBA 2K24",
  image_url: " "
)

Game.create!(
  platform: "PC",
  title: "League of Legends",
  image_url: " "
)

Game.create!(
  platform: "Playstation",
  title: "F1 2024",
  image_url: " "
)

Game.create!(
  platform: "Xbox",
  title: "Overwatch 2",
  image_url: " "
)

Game.create!(
  platform: "Playstation",
  title: "Destiny 2",
  image_url: " "
)

Competition.create!(
  user: User.first,
  game: Game.all.sample,
  opp: User.second,
  wager: 10.00
)
