# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Créer des villes
city1 = City.create(city_name: "Paris")
city2 = City.create(city_name: "Lyon")

# Créer des dogsitters
dogsitter1 = Dogsitter.create(first_name: "Jean", last_name: "Dupont", city: city1)
dogsitter2 = Dogsitter.create(first_name: "Marie", last_name: "Curie", city: city2)

# Créer des chiens
dog1 = Dog.create(name: "Rex", breed: "Labrador", city: city1)
dog2 = Dog.create(name: "Bella", breed: "Bulldog", city: city2)

# Créer des promenades
stroll1 = Stroll.create(date: DateTime.now, dogsitter: dogsitter1, dog: dog1)
stroll2 = Stroll.create(date: DateTime.now + 1.day, dogsitter: dogsitter2, dog: dog2)
