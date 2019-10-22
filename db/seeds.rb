# frozen_string_literal: true

Horse.destroy_all
Breed.destroy_all

NUMBER_OF_BREEDS = 5
HORSES_PER_BREED = 15

NUMBER_OF_BREEDS.times do
  breed = Breed.create(name: Faker::Creature::Horse.unique.breed)

  HORSES_PER_BREED.times do
    breed.horses.create(name: Faker::Creature::Horse.unique.name)
  end
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Horse.count} Horses."
