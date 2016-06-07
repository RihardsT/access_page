require 'rails_helper'

RSpec.describe BoxItem, type: :model do
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:content) }
end
