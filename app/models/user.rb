class User < ActiveRecord::Base
  has_many :logs
  has_secure_password
  validates :name, :surname, :person_code, :password_digest, :level,
    presence: true, allow_blank: false
end
