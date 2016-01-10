class HomeController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @homeForm = 'admin'
    else
      @homeForm = 'user'
    end
  end

end
