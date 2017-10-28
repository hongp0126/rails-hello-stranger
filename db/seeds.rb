require "open-uri"
puts "SEEDING..."
FoodCulture.destroy_all
User.destroy_all
Appointment.destroy_all

puts "SEEDING food cultures...."
food_cultures = ['korean', 'japanese', 'italian', 'french', 'greek', 'vietnamese', 'canadian', 'mexican', 'indian', 'chinese', 'thai', 'spanish', 'mediterranean', 'turkish']

food_cultures.each do |food_culture|
  FoodCulture.create(nationality: food_culture.capitalize)
end

#random_names = ['Brad Pitt', 'Tom Cruise', 'Johnny Depp', 'Will Smith', 'Marilyn Monroe', 'Tom Hanks', 'Angelina Jolie', 'Jennifer Lawrence', 'Matt Damon', 'Leonardo Decaprio', 'Scarlett Johansson']

#i = 0
#5.times do
#user1 = Appointment.create(random_name: random_names[i])
#user2 = Appointment.create(random_name: random_names[i])
#end

puts "done seeding!"
