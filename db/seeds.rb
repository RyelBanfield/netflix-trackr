require 'faker'

10.times do

  User.create(name: Faker::Name.first_name, email: Faker::Internet.email, password: "qwerty", password_confirmation: "qwerty")

end