puts "Seeding 1 user..."
User.find_or_create_by!(email: "user@example.com") do |user|
  user.password = "123123123"
end

puts "Seeding 20 products..."
20.times do |number|
  Product.find_or_create_by!(name: "Product #{number}", price: rand(10))
end

puts "Seeding complete!"
