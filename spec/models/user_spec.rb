require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:logs) }
  it { should have_secure_password }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:surname) }
  it { should validate_presence_of(:person_code) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:card_id) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:level) }
  it { should validate_presence_of(:status_id) }
end
