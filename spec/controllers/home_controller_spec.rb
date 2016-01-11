require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "redirects to login, if empty session" do
      get :index
      expect(response).to redirect_to(login_path)
    end
    it "shows admin view, if admin"
    it "show user view, if user"
  end

end
