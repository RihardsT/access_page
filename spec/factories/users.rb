FactoryGirl.define do
  factory :user do
    name "admin"
    surname "admin"
    person_code "MyString"
    password_digest "MyString"
    level 1
  end

end
