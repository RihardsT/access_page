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
      @logs = params[:limit].nil? ? Log.last(10) : Log.last(params[:limit].to_i)
      if params[:limit] == '0'
        @logs = Log.all
      end
    elsif logged_in?
      @logs = Log.where(user_id: session[:user_id])
    end
  end

end
