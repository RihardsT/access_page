class Box < ActiveRecord::Base
  validates :category, :title, :email, :content, presence: true, allow_blank: false
end
