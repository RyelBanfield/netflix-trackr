# frozen_string_literal: true

require 'faker'

User.create(name: 'Ryel Banfield', email: 'ryelbanfield@gmail.com', password: '123456', password_confirmation: '123456')

20.times do
  User.create(name: Faker::Name.first_name, email: Faker::Internet.email, password: 'qwerty', password_confirmation: 'qwerty')
end

20.times do
  Review.create(title: Faker::Lorem.word, comment: Faker::Lorem.sentence, rating: Faker::Number.decimal(l_digits: 1), user_id: Faker::Number.between(from: 2, to: 11))
end
