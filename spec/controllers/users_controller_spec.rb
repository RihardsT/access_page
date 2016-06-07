require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  # Should create user with FactoryGirl
  it do
    params = {
      user: {
        name: 'John',
        surname: 'Doe',
        email: 'johndoe@example.com',
        password: 'password'
      }
    }
    should permit(:name, :surname, :person_code, :email, :phone,
      :card_id, :password, :password_confirmation, :level, :status_id).
      for(:create, params: params).
      on(:user)
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success"
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: 1
      expect(response).to have_http_status(:success)
    end
  end

end
