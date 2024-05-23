# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Result.destroy_all
Stat.destroy_all
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
  platform: "Mobile",
  title: "Call Of Duty Warzone",
  image_url: "https://images.cgames.de/images/gsgp/4/cod-warzone-mobile_6279399.jpg"
)

Game.create!(
  platform: "Playstation",
  title: "Call Of Duty Modern Warfare 3",
  image_url: "https://assets.xboxservices.com/assets/64/ea/64ea9f0e-6c8f-44f9-8866-429edbad9784.jpg?n=2626994_Poster-Image-1084_1920x1080_02.jpg"
)

Game.create!(
  platform: "PC",
  title: "Call Of Duty Modern Warfare 2 ",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6jvpm__i_rQL9B8a6q-HajQQp_u9kF6FqjWHi-QxX0A&s"
)

Game.create!(
  platform: "Xbox",
  title: "WWE",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVmKCFQutgE4gvPnX_SHUFKTGRmjS_upx1mZK29dffaHZoHznCGZvo4BuqoDFMQGAuU2E&usqp=CAU"
)


Game.create!(
  platform: "Playstation",
  title: "Fortnite",
  image_url: "https://imageio.forbes.com/specials-images/imageserve/603baf25e1d15666937dd768/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds"
)

Game.create!(
  platform: "Xbox",
  title: "Apex Legends",
  image_url: "https://activeplayer.io/wp-content/uploads/2022/07/Apex-Legends-Live-Player-Count.jpg"
)

Game.create!(
  platform: "PC",
  title: "Minecraft",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyh4_OqFUTx5uq5gLtOOf6jvUX_p3Ghuh2pIggkjMZ8N_hjgNvGJxp6CIjlwv47KGJMdc&usqp=CAU"
)

Game.create!(
  platform: "Mobile",
  title: "Mario Kart",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6mgLSEfso8uVQiTu0Ncq2lVP377D17nLvRw&s"
)

Game.create!(
  platform: "PC",
  title: "Rocket league",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI4lhAZeMXQysuOpnFdXX5JzlBabYSycMK2MchPIZdAOeUTyzRtwrVSWBLcqtIOZu05JI&usqp=CAU"
)

Game.create!(
  platform: "Xbox",
  title: "Xdefiant",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmSXOQuhX_dlV4oqGIlzqXQYTMyHwAC-T-SnbmXX_3lg&s"
)

Game.create!(
  platform: "Playstation",
  title: "Valorant",
  image_url: "https://img.redbull.com/images/c_crop,w_1920,h_960,x_0,y_103,f_auto,q_auto/c_scale,w_1200/redbullcom/2020/6/5/ctsejxmdtw9inp8zqqqd/red-bull-campus-clutch-valorant-agents"
)

Game.create!(
  platform: "Xbox",
  title: "NBA 2K24",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iBFrjM9pegu-v8q9JnoJdMW4iuB5Haex69ll3AKLqg&s"
)

Game.create!(
  platform: "PC",
  title: "League of Legends",
  image_url: "https://britishesports.org/wp-content/uploads/league-of-legends.jpg"
)

Game.create!(
  platform: "Playstation",
  title: "F1 2024",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHpuKaBmvlFVWLRCL7kO-2uGxFx5WQ6lfZwbDFet3e_w&s"
)

Game.create!(
  platform: "Xbox",
  title: "Overwatch 2",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAW9fIFEr4rWZaNqWpyBLEHvubtLKlB2SNrP-xj3y1VwjLt3bP_k7JMs8wHspVF2YwmuA&usqp=CAU"
)

Game.create!(
  platform: "Playstation",
  title: "Destiny 2",
  image_url: "https://blog.playstation.com/tachyon/2023/05/86d4ab9b5d171138c90879f03533ae4bb4f7d450.jpg?resize=1088%2C612&crop_strategy=smart"
)

Competition.create!(
  user: User.first,
  game: Game.all.sample,
  opp: User.second,
  wager: 10.00
)
