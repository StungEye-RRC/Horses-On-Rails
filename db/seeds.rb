# frozen_string_literal: true

Horse.destroy_all
Breed.destroy_all

NUMBER_OF_BREEDS = 2
HORSES_PER_BREED = 4

NUMBER_OF_BREEDS.times do
  breed = Breed.create(name: Faker::Creature::Horse.unique.breed)

  HORSES_PER_BREED.times do
    horse = breed.horses.create(
      name:           Faker::Creature::Horse.unique.name,
      age:            rand(3..348),
      number_of_legs: rand(1..27),
      top_speed:      3.1415926 * rand(20..56)
    )
    downloaded_image = open(URI.escape("https://source.unsplash.com/600x600/?#{[horse.name, breed.name].join(',')}"))
    horse.image.attach(io: downloaded_image, filename: "m-#{[horse.name, breed.name].join('-')}.jpg")
    sleep(1) # Throttle a tad. Needed?
  end
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Horse.count} Horses."

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
end
