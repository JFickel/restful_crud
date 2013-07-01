require 'faker'

10.times do |i|
  i += 1
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  Note.create(title: Faker::Company.name, content: Faker::Lorem.paragraph, user_id: i)
end

10.times do |i|
  i += 1
  Note.create(title: Faker::Company.name, content: Faker::Lorem.paragraph, user_id: i)
end