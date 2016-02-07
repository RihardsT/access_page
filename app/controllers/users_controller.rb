class UsersController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @page_title = "Admin|Users"
      @users = User.all
    elsif logged_in?
      @page_title = "User"
      redirect_to user
      @users = User.find(session[:user_id])
    end
  end

  def new
  end

  def show
    unless admin_login?
      redirect_to root_path
    end
    @users = []
    @users << User.find(params[:id])
    @logs = Log.where(user_id: params[:id])
  end

  def edit
  end
end
