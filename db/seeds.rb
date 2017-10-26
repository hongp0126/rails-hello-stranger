require "open-uri"
puts "SEEDING..."
FoodCulture.destroy_all
User.destroy_all
Appointment.destroy_all

puts "SEEDING INSTRUMENTS..."
food_clutures = ['korean', 'japanese', 'italian', 'french', 'greek', 'vietnamese', 'canadian', 'mexican', 'indian', 'chinese', 'thai', 'spanish', 'mediterranean', 'turkish']

food_clutures.each do |food_cluture|
  FoodCulture.create(nationality: food_culture.capitalize)
end

puts "done seeding!"
