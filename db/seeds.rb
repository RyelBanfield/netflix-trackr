# frozen_string_literal: true

require 'faker'

10.times do
  User.create(name: Faker::Name.first_name, email: Faker::Internet.email, password: 'qwerty',
              password_confirmation: 'qwerty')
end

User.create(name: 'Ryel Banfield', email: 'ryelbanfield@gmail.com', password: '123456', password_confirmation: '123456')