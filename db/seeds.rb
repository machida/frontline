# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..5).each do |i|
  User.create!(name: "Guest#{i}", email: "guest#{i}@example.com", password: "testtest")
end

(1..3).each do |i|
  Party.create!(name: "Party#{i}", user_id: rand(5)+1)
end
