# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# on supprimer les données précédentes pour avoir une base de départ propre
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all


# création de ville (5 pour débuter)
5.times do
	City.create(city_name:Faker::Address.city)
end

# on crée des chiens aux noms de super heros
120.times do
	Dog.create(name:Faker::DcComics.hero, city_id:City.all.sample.id)	
end

# on crée des dogsitters aux noms d'humains 
100.times do
	Dogsitter.create(name:Faker::Name.name, city_id:City.all.sample.id)	
end

# Generation de strolls par ville (afin de s'assurer que les chiens et les sitters sont de la meme ville)
City.all.each do |city|
	100.times do
		Stroll.create(date:Faker::Date.in_date_period, dog_id:Dog.where(city_id: city.id).sample.id, dogsitter_id:Dogsitter.where(city_id: city.id).sample.id)
	end
end