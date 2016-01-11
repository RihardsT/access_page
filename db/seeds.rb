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
  password: 'password',
  password_confirmation: 'password',
  level: 0
)
User.create!(
  name: 'user',
  surname: 'user',
  person_code: '123456-12340',
  password: 'password',
  password_confirmation: 'password',
  level: 1
)
User.create!(
  name: 'guest',
  surname: 'guest',
  person_code: '123456-00000',
  password: 'password',
  password_confirmation: 'password',
  level: 2
)

for i in 0..10 do
  Log.create!(
    user_id: rand(2) + 1 
  )
end
