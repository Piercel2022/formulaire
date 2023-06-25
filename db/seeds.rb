# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#ClubAdultes.create(name: "Shalom")
# db/seeds.rb
inscriptions = Inscription.create([
    { vorname: 'John', name: 'Doe', age: 25, adress: '123 Main St', email: 'john@example.com', phone: '1234567890', gender: 'Male' },
    { vorname: 'Jane', name: 'Smith', age: 30, adress: '456 Elm St', email: 'jane@example.com', phone: '9876543210', gender: 'Female' },
  ])
club_adultes = ClubAdulte.create(name: 'Adult Club 1')

club_teevos = ClubTeevo.create(name: 'Teevo Club 1')
club_jeune_lecteurs = ClubJeuneLecteur.create(name: 'Young Readers Club 1')

Club.create(name: 'Shalom')