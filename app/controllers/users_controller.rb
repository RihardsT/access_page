class UsersController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    elsif admin_login?
      @users = User.all
    elsif logged_in?
      redirect_to user
      @users = User.find(session[:user_id])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
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

  def change_status
    user = User.find(params[:user])
    user.status_id = params[:status]
    user.save
    redirect_back_or users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :surname, :person_code, :email, :phone,
      :card_id, :password, :password_confirmation, :level, :status_id)
  end

end
