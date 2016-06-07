class User < ActiveRecord::Base
  has_many :logs
  has_secure_password
  validates :name, :surname, :person_code, :email, :phone, :card_id,
    :password_digest, :level, :status_id,
    presence: true, allow_blank: false
end
