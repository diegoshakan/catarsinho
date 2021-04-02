# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "# Users"
user1 = User.create(username: "usuario1", email: 'user@example.com', password: "changeme", password_confirmation: "changeme")
user2 = User.create(username: "usuario2", email: 'user2@example.com', password: "changeme", password_confirmation: "changeme")
puts "# Projects"
Project.create(title: "Vivendo a Arte", description: "Neste livro, já publicado em vários países, o filósofo Richard Shusterman analisa a cultura de massa à luz dos princípios estéticos do pragmatismo elaborados nos anos 1930 pelo americano John Dewey.", goal: 450.00, start_date: Date.today, endline: Date.today + 20.days, user_id: user1.id, image: Rack::Test::UploadedFile.new("app/assets/images/seed1.jpg"))
Project.create(title: "Hip Hop e Vida", description: "Estamos desenvolvendo um projeto para ajudar pessoas que estão se sentindo sozinhas, com o Hip Hop podemos mais!", goal: 320.00, start_date: Date.today, endline: Date.today + 20.days, user_id: user1.id, image: Rack::Test::UploadedFile.new("app/assets/images/seed2.jpg"))
Project.create(title: "Música Todo Dia", description: "Projeto para ajudar crianças a terem aulas de música, e ter contato com a música todos os dias.", goal: 410.00, start_date: Date.today, endline: Date.today + 20.days, user_id: user2.id, image: Rack::Test::UploadedFile.new("app/assets/images/seed3.jpg"))
Project.create(title: "Futebol Nacional", description: "Futebol é inquestionavelmente o amor brasileiro, por isso, queremos ajudar e apoiar não só os pequenos jogadores, mas seus familiares também.", goal: 490.00, start_date: Date.today, endline: Date.today + 20.days,  user_id: user2.id, image: Rack::Test::UploadedFile.new("app/assets/images/seed4.jpg"))
puts "# End"
