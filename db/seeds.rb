# frozen_string_literal: true

Horse.destroy_all
Breed.destroy_all

NUMBER_OF_BREEDS = 5
HORSES_PER_BREED = 15

NUMBER_OF_BREEDS.times do
  breed = Breed.create(name: Faker::Creature::Horse.unique.breed)

  HORSES_PER_BREED.times do
    breed.horses.create(
      name:           Faker::Creature::Horse.unique.name,
      age:            rand(3..348),
      number_of_legs: rand(1..27),
      top_speed:      3.1415926 * rand(20..56)
    )
  end
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Horse.count} Horses."
