FactoryGirl.define do
  factory :admin do
    name "admin"
    surname "admin"
    person_code "MyString"
    password_digest "MyString"
    level 0
  end
  factory :loguser do
    name "log"
    surname "log"
    person_code "MyString"
    password_digest "MyString"
    level 2
  end
  factory :user do
    name "user"
    surname "user"
    person_code "MyString"
    password_digest "MyString"
    level 1
  end

end
