# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
r1 = Restaurant.create(name: "Rei do caldo", category: "chinese", address: "peixoto, jaça, maceio", phone_number: "82999999999")
r2 = Restaurant.create(name: "Bicho do mar", category: "french", address: "menino marcelo, serraria, maceio", phone_number: "82999999999")
r3 = Restaurant.create(name: "Emporido do camarão", category: "italian", address: "av jangadeiros, paju, maceio", phone_number: "82999999999")
r4 = Restaurant.create(name: "Pizzaria POP", category: "italian", address: "jaça, maceio", phone_number: "82999999999")
r5 = Restaurant.create(name: "New hakata", category: "japanese", address: "estela mares, maceio", phone_number: "82999999999")
