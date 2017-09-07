#Create Users

5.times do
  User.create!(
  email: Faker::Internet.unique.email,
  password: 'password'
  )
end

dev = User.create!(
  email: "admin@blocitoff.com",
  password: "password"
)

users = User.all

25.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
