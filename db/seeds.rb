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
  title: "FIFA"
)

Game.create!(
  platform: "PC",
  title: "Tekken"
)

Game.create!(
  platform: "Mobile",
  title: "Call Of Duty"
)

Game.create!(
  platform: "Playstation",
  title: "UFC"
)

Game.create!(
  platform: "Xbox",
  title: "WWE"
)

Competition.create!(
  user: User.first,
  game: Game.all.sample,
  opp: User.second,
  wager: 10.00
)
