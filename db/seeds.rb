puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 7420 9324", category: "french")
puts "Created Dishoom"

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 7349 9650",   category: "italian")
puts "Created Pizza East"

Restaurant.create!(name: "Ivy Asia", address: "8-10 N Audley St, London W1K 6ZD", phone_number: "020 3751 4990", category: "chinese")
puts "Created Ivy Asia"

Restaurant.create!(name: "Nobu", address: "19 Old Park Ln, London W1K 1LB", phone_number: "020 7447 4747", category: "japanese")
puts "Created Nobu"

Restaurant.create!(name: "The Marlborough Head", address: "36 Drury Ln, London WC2B 5RR", phone_number: "020 7379 7446", category: "belgian")
puts "Created The Marlborough Head"

puts "Finished! Created #{Restaurant.count} restaurants."
