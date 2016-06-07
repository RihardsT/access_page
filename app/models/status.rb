class Status < ActiveRecord::Base
  has_many :users
  validates :name, presence: true, allow_blank: false
end
