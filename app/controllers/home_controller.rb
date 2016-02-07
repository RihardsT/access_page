class HomeController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @page_title = "Admin|Logs"
      @logs = Log.all
    elsif logged_in?
      @page_title = "User"
      @logs = Log.where(user_id: session[:user_id])
    end
  end

end
