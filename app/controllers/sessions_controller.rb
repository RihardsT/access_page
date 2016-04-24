class SessionsController < ApplicationController
  def new
    unless current_user.nil?
      flash[:info] = "You're allready logged in"
      redirect_to root_path
    end
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or root_url
    else
      flash[:danger] = 'Invalid name/password combination'
      redirect_to login_path
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
