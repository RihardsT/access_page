# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Status.create!(name: 'Good')
Status.create!(name: 'Banned')
Status.create!(name: 'Expired')
Status.create!(name: 'User revoked')

User.create!(
  name: 'admin',
  surname: 'admin',
  person_code: '123456-12345',
  email: 'admin@admin.com',
  phone: Faker::PhoneNumber.cell_phone,
  card_id: '01',
  password: 'password',
  password_confirmation: 'password',
  level: 0,
  status_id: 1
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
  level: 2,
  status_id: 1
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
    phone: Faker::PhoneNumber.cell_phone,
    status_id: [1,2,3,4].sample
  )
end

40.times do
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

count = 0
10.times do
  # time = Faker::Time.between(2.days.ago, Time.now, :afternoon)
  BoxItem.create(
  category: count > 4 ? 0 : 1,
  title: Faker::Book.title,
  email: Faker::Internet.email,
  content: Faker::Lorem.paragraph(10)
  )
  count += 1
end