# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(
  name: 'admin',
  surname: 'admin',
  person_code: '123456-12345',
  email: 'admin@admin.com',
  phone: Faker::PhoneNumber.cell_phone,
  card_id: '01',
  password: 'password',
  password_confirmation: 'password',
  level: 0
)
User.create!(
  name: 'log',
  surname: 'log',
  person_code: '123456-00000',
  email: 'log@admin.com',
  phone: Faker::PhoneNumber.cell_phone,
  card_id: '03',
  password: 'password',
  password_confirmation: 'password',
  level: 2
)
5.times do
  User.create!(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    card_id: Faker::Number.number(10),
    level: 1,
    password: 'password',
    password_confirmation: 'password',
    person_code: '123456-12340',
    phone: Faker::PhoneNumber.cell_phone
  )
end

10.times do
  time = Faker::Time.between(2.days.ago, Time.now, :afternoon)
  action = rand(2)
  if action == 1
    reason = 'Good'
  else
    reason = ['Bad ID', 'Bad time', 'Banned', 'Expired', 'User revoked'].sample
  end
  Log.create!(
    user_id: rand(7) + 1,
    timeopen: time,
    timeclose: time + 60,
    action: action,
    reason: reason
  )
end
