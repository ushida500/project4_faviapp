class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    p "User:"
    p @user
    p "Login is correct: " + (@user && @user.authenticate(params[:password])).to_s
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # if login info is incorrect, will trigger this message...
      flash[:danger] = 'Email or username is incorrect, so try again.'
      redirect_to new_session_path 
    end
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_path 
  end
end

