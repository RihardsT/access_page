class HomeController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @logs = Log.last(5)
    elsif logged_in?
      @logs = Log.where(user_id: session[:user_id]).last(5)
    end
  end

  def log
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @logs = Log.all
    elsif logged_in?
      @logs = Log.where(user_id: session[:user_id])
    end
  end

end
