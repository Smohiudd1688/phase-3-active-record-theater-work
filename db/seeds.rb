puts "Begin Seeding"

5.times do |i|
    Role.create(
        character_name: Faker::Movies::HarryPotter.character
    )
end

20.times do |i|
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Nation.capital_city,
        phone: Faker::PhoneNumber.phone_number,
        hired: rand(2) == 1 ? true : false,
        role_id: rand(1..5)
    )
end

puts "Done seeding"