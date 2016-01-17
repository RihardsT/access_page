class UsersController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @form = 'admin'
      @users = User.all
    end
  end

  def new
  end

  def show
  end

  def edit
  end
end
